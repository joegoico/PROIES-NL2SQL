"""
backend/service/nl2sql_service.py
─────────────────────────────────────────────────────────────────────────────
Servicio de Negocio — NL2SQL Pipeline

Orquesta el flujo completo de conversión de lenguaje natural a SQL:

  1. Recibe pregunta + esquema_maestro (desde app.state, inyectado por el controller)
  2. Construye el catálogo compacto para el SLM (catalog_builder)
  3. Invoca SLMRouter.ruteo_tablas() → índices de tablas relevantes
  4. Extrae los DDLs completos de esas tablas desde el esquema_maestro
  5. (Próxima fase) Genera el SQL final con el LLM pesado usando esos DDLs
  6. (Próxima fase) Ejecuta la query vía DBRepository y retorna resultados

Imports relativos:
  Usamos "from .slm_router" en lugar de "from service.slm_router" o
  "from backend.service.slm_router" para que el módulo funcione correctamente
  tanto cuando pytest agrega 'backend/' al PYTHONPATH (pytest.ini) como
  cuando Docker/uvicorn ejecuta desde /app.
─────────────────────────────────────────────────────────────────────────────
"""

import logging
from typing import Any
from backend.custom.schema_prefilter import SchemaPrefilter

from backend.models.slm_router import SLMRouter
from .catalog_builder import construir_catalogo_para_slm

logger = logging.getLogger(__name__)


class NL2SQLService:
    """
    Servicio principal del pipeline NL2SQL.

    Recibe el esquema_maestro por parámetro en cada llamada (no en __init__)
    porque el esquema vive en app.state de FastAPI y el service no debe
    acoplar su ciclo de vida al de la aplicación.

    Atributos:
        router (SLMRouter): Instancia del router de primer nivel.
            Inyectable en tests para evitar llamadas reales a Groq.
    """

    def __init__(self, router: SLMRouter | None = None) -> None:
        """
        Args:
            router: Instancia de SLMRouter. Si es None, se crea una nueva.
                Pasar un mock aquí es la forma canónica de testear este servicio.
        """
        self.router: SLMRouter = router or SLMRouter()
        self.prefilter = SchemaPrefilter()
        logger.debug("NL2SQLService inicializado | router=%s", type(self.router).__name__)

    def procesar_pregunta(
        self,
        pregunta: str,
        esquema_maestro: dict[str, Any],
    ) -> dict[str, Any]:
        """
        Ejecuta el pipeline NL2SQL completo para una pregunta.

        Flujo actual (fases 1-4 implementadas):
          1. Construir catálogo compacto desde esquema_maestro
          2. Rutear la pregunta → obtener índices de tablas relevantes
          3. Extraer DDLs completos de las tablas seleccionadas
          4. Retornar contexto enriquecido (listo para generación de SQL)

        Args:
            pregunta: Consulta en lenguaje natural del usuario.
            esquema_maestro: Diccionario cargado desde master_schema.json,
                mapeando índices ("T_1", "T_2") a sus DDL y metadata.

        Returns:
            Diccionario con los resultados del pipeline:
            {
                "pregunta": str,
                "tablas_seleccionadas": list[str],   # índices elegidos por el SLM
                "ddls_relevantes": dict[str, str],   # {indice: ddl_completo}
                "catalogo_usado": str,               # catálogo compacto enviado al SLM
                "sql_generado": str | None,          # None hasta implementar fase 5
                "resultado": list | None,            # None hasta implementar fase 6
            }

        Raises:
            ValueError: Si la pregunta está vacía o el esquema_maestro es None.
            RuntimeError: Si el SLM Router falla de forma inesperada.
        """
        # ── Validación de entrada ────────────────────────────────────────────
        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        if not esquema_maestro:
            raise ValueError(
                "El esquema_maestro no puede ser None ni estar vacío. "
                "Verificar que app.state.esquema_maestro se inicializó correctamente."
            )

        logger.info("NL2SQLService.procesar_pregunta | pregunta=%r", pregunta[:100])

        # ── Fase 1: Construir catálogo compacto ─────────────────────────────
        catalogo = construir_catalogo_para_slm(esquema_maestro)
        logger.debug("Catálogo construido: %d chars, %d tablas",
                   len(catalogo), len(esquema_maestro))

        # ── Fase 2: Rutear con SLM ──────────────────────────────────────────
        tablas_seleccionadas: list[str] = self.prefilter.obtener_indices(
            pregunta=pregunta,
            esquema_maestro=esquema_maestro,
        )
        logger.info("Tablas seleccionadas por prefilter: %s", tablas_seleccionadas)

        if not tablas_seleccionadas:
            raise ValueError(
                "El prefilter no pudo identificar tablas relevantes para la pregunta."
            )
        # ── Fase 4: Llamar al SLM para que filtre las tablas finales ──────────────────────────────
        tablas_filtradas_slm = self.router.obtener_indices(
            pregunta=pregunta,
            catalogo=tablas_seleccionadas,
        )
        # ── Fase 3: Extraer DDLs desde memoria ──────────────────────────────
        #ddls_relevantes: dict[str, str] = self._extraer_ddls(
        #    esquema_maestro=esquema_maestro,
         #   indices=tablas_seleccionadas,
        #)

        logger.info(
            "Catálogo reducido: %d tablas",
            #len(ddls_relevantes),
        )

        # ── Fase 4: Preparar respuesta (SQL pendiente de implementación) ────
        return {
            "pregunta": pregunta,
            "tablas_seleccionadas": tablas_filtradas_slm,
            #"ddls_relevantes": ddls_relevantes,
            "catalogo_usado": catalogo,
            "sql_generado": None,   # TODO: Fase 5 — LLM generador de SQL
            "resultado": None,      # TODO: Fase 6 — DBRepository.ejecutar_sql()
        }

    # ─────────────────────────────────────────────────────────────────────────
    # Helpers privados
    # ─────────────────────────────────────────────────────────────────────────
    def _extraer_ddls(
        self,
        esquema_maestro: dict[str, Any],
        indices: list[str],
    ) -> dict[str, str]:
        """
        Extrae los DDLs completos de las tablas indicadas desde el esquema en memoria.

        Nunca lanza excepción si un índice no existe: lo loguea y lo omite.
        Esto evita que una respuesta imperfecta del SLM rompa el pipeline.

        Args:
            esquema_maestro: Esquema completo en memoria.
            indices: Lista de índices a extraer, ej: ["T_1", "T_45"].

        Returns:
            Dict {indice: ddl_completo} con solo las tablas encontradas.
        """
        ddls: dict[str, str] = {}

        for indice in indices:
            datos = esquema_maestro.get(indice)
            if datos is None:
                logger.warning(
                    "NL2SQLService: índice '%s' no encontrado en esquema_maestro. "
                    "Verificar que el SLM usa los índices correctos del catálogo.",
                    indice,
                )
                continue

            ddl = datos.get("ddl", "")
            if not ddl:
                logger.warning(
                    "NL2SQLService: índice '%s' encontrado pero sin DDL. "
                    "Revisar master_schema.json.",
                    indice,
                )
                continue

            ddls[indice] = ddl

        logger.debug(
            "NL2SQLService._extraer_ddls: %d/%d índices encontrados",
            len(ddls), len(indices),
        )
        return ddls

def get_nl2sql_service(
    slm=None,
) -> NL2SQLService:
    """
    Esta función es la que verá FastAPI. 
    FastAPI solo inspeccionará 'repo' (que es válido) y no sabrá 
    jamás que adentro de la clase existe un 'SLMRouter | None'.
    """

    if slm is None:
        slm = SLMRouter()

    return NL2SQLService(router=slm) 