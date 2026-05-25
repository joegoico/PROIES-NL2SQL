from fastapi import Depends
from repositories.db_repository import DBRepository
from service.slm_router import SLMRouter  # IMPORTANTE: Esto limpia el error del Mock

class NL2SQLService:
    def __init__(self, repo: DBRepository = Depends(), slm_router: SLMRouter = Depends()):
        self.repo = repo
        self.slm_router = slm_router

    def procesar_pregunta(self, pregunta: str, esquema: dict):
        """
        Orquesta el flujo híbrido NL2SQL: Enrutamiento por SLM, 
        generación por LLM y ejecución en base de datos.
        """
        # 1. SLM: Obtener índices de tablas candidatas
        # Le pasamos un catálogo simulado basado en el esquema para el router
        catalogo_string = str(esquema)
        indices = self.slm_router.ruteo_tablas(pregunta, catalogo_string)
        
        # Validación de Fase Roja: Si el router no encuentra tablas, lanzamos error
        if not indices:
            raise ValueError("El SLM no pudo identificar tablas relevantes para la consulta.")
        
        # 2. LLM: Generar consulta SQL estructurada
        # Delegamos esto a un método interno para que el test lo pueda mockear limpiamente
        sql_limpio = self._generar_sql(pregunta, indices, esquema)
        
        # 3. Ejecución en la base de datos real a través del Repository
        resultados_db = self.repo.ejecutar_consulta(sql_limpio)
        
        return {
            "sql_generado": sql_limpio,
            "resultados": resultados_db
        }

    def _generar_sql(self, pregunta: str, indices: list, esquema: dict) -> str:
        """
        Helper para invocar la cadena de generación de SQL (query_chain).
        Este método es interceptado por los mocks en los entornos de prueba.
        """
        # En producción, acá es donde filtrarías tu esquema_maestro en RAM usando los 
        # índices seleccionados y llamarías al LLM grande con el prompt_SQL.
        return ""