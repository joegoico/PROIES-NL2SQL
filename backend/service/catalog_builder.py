"""
backend/service/catalog_builder.py
─────────────────────────────────────────────────────────────────────────────
Constructor del Catálogo Compacto para el SLM Router

Responsabilidad: transformar el esquema maestro (master_schema.json) en el
string de catálogo que el SLM Router necesita para identificar tablas.

El esquema maestro tiene esta estructura por tabla:
  {
    "T_1": {
      "nombre_tabla": "instituciones",
      "ddl": "CREATE TABLE instituciones (\n  id SERIAL PRIMARY KEY, -- Identificador único\n  nombre VARCHAR(255), -- Nombre oficial del organismo\n  ...\n);\nCOMMENT ON TABLE instituciones IS 'Datos básicos de las instituciones y organizaciones.';",
      "comentario_tabla": "Datos básicos de las instituciones y organizaciones."
    },
    "T_2": { ... }
  }

El catálogo compacto resultante tiene el formato que espera el SLM:
  T_1: Datos básicos de las instituciones y organizaciones.
       Columnas clave: nombre (nombre oficial), tipo_organismo, activo
  T_2: Proyectos y programas sociales activos.
       Columnas clave: estado (activo/cerrado/suspendido), monto_aprobado, fecha_inicio

La descripción de columnas clave se extrae de los comentarios inline (-- ...)
del DDL, priorizando columnas con comentarios ricos en vocabulario de dominio.
─────────────────────────────────────────────────────────────────────────────
"""

import re
import logging
from dataclasses import dataclass, field

logger = logging.getLogger(__name__)

# ─────────────────────────────────────────────────────────────────────────────
# Estructuras de datos
# ─────────────────────────────────────────────────────────────────────────────

@dataclass
class EntradaCatalogo:
    """Representación intermedia de una tabla en el catálogo."""
    indice: str                          # "T_1", "T_2", etc.
    nombre_tabla: str                    # "instituciones"
    descripcion_tabla: str               # Extraída de COMMENT ON TABLE
    columnas_clave: list[str] = field(default_factory=list)  # ["nombre", "estado"]
    comentarios_columnas: dict[str, str] = field(default_factory=dict)  # {"estado": "activo/cerrado"}


# ─────────────────────────────────────────────────────────────────────────────
# Parseo de DDL
# ─────────────────────────────────────────────────────────────────────────────

# Regex para COMMENT ON TABLE ... IS '...'
_RE_COMMENT_ON_TABLE = re.compile(
    r"COMMENT\s+ON\s+TABLE\s+\w+\s+IS\s+'([^']+)'",
    re.IGNORECASE
)

# Regex para extraer líneas de columna con comentario inline:
#   nombre_columna tipo_dato [modificadores] -- comentario aquí
#
# Maneja dos formatos de DDL:
#   - Bien formateado (columna en línea propia indentada): "    estado VARCHAR -- activo/cerrado"
#   - Compacto (columnas separadas por coma):              ", estado VARCHAR -- activo/cerrado"
#
# Captura: grupo 1 = nombre de columna, grupo 2 = comentario después de --
_RE_COLUMNA_CON_COMENTARIO = re.compile(
    r"(?:^[ \t]+|,\s*)"    # inicio de línea indentada O después de coma
    r"([a-z_]\w*)"         # grupo 1: nombre de columna (minúsculas para evitar keywords)
    r"\s+\w[^-\n]*"        # tipo de dato y modificadores (sin guiones de inicio)
    r"--\s*([^\n]+)",       # grupo 2: comentario inline
    re.IGNORECASE | re.MULTILINE
)

# Columnas técnicas/de auditoría: poco relevantes semánticamente para el SLM
_COLUMNAS_A_IGNORAR = frozenset({
    "id", "uuid",
    "created_at", "updated_at", "deleted_at",
    "created_by", "updated_by",
    "version",
    # Keywords SQL que el regex podría capturar en DDL mal formateado
    "create", "table", "constraint", "primary", "foreign", "unique", "index",
})

# Máximo de columnas clave a incluir en el catálogo por tabla
_MAX_COLUMNAS_CATALOGO = 5


def _extraer_comment_on_table(ddl: str) -> str:
    """
    Extrae el texto del COMMENT ON TABLE ... IS '...' en el DDL.

    Ejemplo DDL:
        COMMENT ON TABLE proyectos IS 'Proyectos y programas sociales activos';

    Returns:
        El comentario de tabla, o string vacío si no existe.
    """
    match = _RE_COMMENT_ON_TABLE.search(ddl)
    return match.group(1).strip() if match else ""


def _extraer_columnas_comentadas(
    columnas_raw: dict[str, str],
) -> dict[str, str]:
    """
    Normaliza las columnas descriptivas provenientes del esquema maestro.

    Args:
        columnas_raw:
            Dict del tipo:
            {
                "id_proyecto": "ID del proyecto",
                "nombre": "Nombre del proyecto"
            }

    Returns:
        Dict {nombre_columna: descripcion}, excluyendo columnas técnicas.
    """
    if not columnas_raw:
        return {}

    columnas: dict[str, str] = {}

    for nombre, comentario in columnas_raw.items():
        nombre_normalizado = nombre.lower().strip()

        if nombre_normalizado in _COLUMNAS_A_IGNORAR:
            continue

        comentario_limpio = str(comentario).strip()

        if comentario_limpio:
            columnas[nombre_normalizado] = comentario_limpio

    return columnas


def _seleccionar_columnas_clave(
    columnas_comentadas: dict[str, str],
    max_columnas: int = _MAX_COLUMNAS_CATALOGO
) -> list[tuple[str, str]]:
    """
    Selecciona las columnas más informativas para el catálogo.

    Prioriza columnas cuyos comentarios contienen:
    - Valores de enumeración (ej: 'activo', 'cerrado')
    - Palabras de dominio (monto, nombre, fecha, código, tipo, estado)
    - Comentarios más largos (más descriptivos)

    Returns:
        Lista de tuplas (nombre_columna, comentario) con las más relevantes.
    """
    _PALABRAS_DOMINIO = {
        "monto", "nombre", "fecha", "código", "tipo", "estado", "total",
        "cantidad", "precio", "descripción", "categoria", "organismo",
        "activo", "vigente", "aprobado", "rechazado", "pendiente"
    }

    def puntaje(item: tuple[str, str]) -> int:
        nombre, comentario = item
        comentario_lower = comentario.lower()
        pts = 0
        # Más puntos si el comentario tiene valores de enum
        if "'" in comentario or "/" in comentario:
            pts += 3
        # Más puntos si el nombre está en palabras de dominio
        if nombre.lower() in _PALABRAS_DOMINIO:
            pts += 2
        # Más puntos si el comentario menciona palabras de dominio
        if any(p in comentario_lower for p in _PALABRAS_DOMINIO):
            pts += 1
        # Más puntos por longitud del comentario (más descriptivo)
        pts += min(len(comentario) // 20, 2)
        return pts

    ordenadas = sorted(columnas_comentadas.items(), key=puntaje, reverse=True)
    return ordenadas[:max_columnas]


# ─────────────────────────────────────────────────────────────────────────────
# API pública
# ─────────────────────────────────────────────────────────────────────────────

def construir_entrada_catalogo(
    indice: str,
    datos_tabla: dict,
) -> EntradaCatalogo | None:
    """
    Construye una EntradaCatalogo a partir de un nodo del esquema maestro.

    Args:
        indice: Clave del esquema maestro, ej: "T_1".
        datos_tabla: Dict con las claves "ddl", "nombre_tabla", "comentario_tabla".

    Returns:
        EntradaCatalogo poblada, o None si los datos son insuficientes.
    """
    nombre_tabla = datos_tabla.get("nombre_real", indice)
    descripcion = datos_tabla.get("descripcion_tabla", "")

    columnas_comentadas = _extraer_columnas_comentadas(datos_tabla.get("columnas", {}))
    columnas_clave_seleccionadas = _seleccionar_columnas_clave(columnas_comentadas)

    return EntradaCatalogo(
        indice=indice,
        nombre_tabla=nombre_tabla,
        descripcion_tabla=descripcion,
        columnas_clave=[nombre for nombre, _ in columnas_clave_seleccionadas],
        comentarios_columnas=dict(columnas_clave_seleccionadas),
    )


def formatear_linea_catalogo(entrada: EntradaCatalogo) -> str:
    """
    Convierte una EntradaCatalogo al formato de string que consume el SLM.

    Formato de salida:
        T_1: Datos básicos de instituciones. | cols: nombre, tipo_organismo, activo

    El separador | y el prefijo "cols:" son reconocibles por el SLM y
    lo ayudan a entender rápidamente qué columnas tiene cada tabla.
    """
    base = f"{entrada.indice}: {entrada.descripcion_tabla}"

    if entrada.columnas_clave:
        # Incluir nombre de columna + extracto del comentario entre ()
        partes = []
        for col in entrada.columnas_clave:
            comentario = entrada.comentarios_columnas.get(col, "")
            # Acortar comentarios largos para no exceder el contexto del catálogo
            extracto = comentario[:40].rstrip(",. ") if comentario else ""
            if extracto:
                partes.append(f"{col} ({extracto})")
            else:
                partes.append(col)

        cols_str = ", ".join(partes)
        return f"{base} | cols: {cols_str}"

    return base


def construir_catalogo_para_slm(esquema_maestro: dict) -> str:
    """
    Construye el string de catálogo completo a partir del esquema maestro
    en memoria (app.state.esquema_maestro).

    Este es el string que se pasa como {catalogo} al SLM Router.

    Args:
        esquema_maestro: Diccionario cargado desde master_schema.json.
            Estructura: {"T_1": {"ddl": "...", "nombre_tabla": "...", ...}, ...}

    Returns:
        String multilínea con una entrada por tabla, ordenado por índice.

    Ejemplo de salida:
        T_1: Datos básicos de instituciones y organizaciones | cols: nombre, tipo_organismo
        T_2: Proyectos y programas sociales | cols: estado (activo/cerrado), monto_aprobado
        T_45: Montos y presupuestos | cols: monto_total, monto_aprobado (en pesos)
    """
    if not esquema_maestro:
        logger.warning("catalog_builder: esquema_maestro vacío, catálogo será vacío")
        return ""

    lineas: list[str] = []

    for indice, datos_tabla in sorted(esquema_maestro.items()):
        entrada = construir_entrada_catalogo(indice, datos_tabla)
        if entrada:
            lineas.append(formatear_linea_catalogo(entrada))
        else:
            logger.warning("catalog_builder: no se pudo construir entrada para %s", indice)

    catalogo = "\n".join(lineas)
    logger.debug(
        "catalog_builder: catálogo construido con %d tablas (%d chars)",
        len(lineas), len(catalogo)
    )
    return catalogo


def construir_catalogo_filtrado(
    esquema_maestro: dict,
    indices: list[str],
) -> str:
    """
    Construye un catálogo parcial con solo las tablas indicadas.

    Útil para el segundo paso del pipeline, donde ya sabemos qué tablas
    necesitamos y queremos darle al LLM generador solo el contexto relevante.

    Args:
        esquema_maestro: Diccionario completo del esquema maestro.
        indices: Lista de índices a incluir, ej: ["T_1", "T_45"].

    Returns:
        String de catálogo filtrado con solo las tablas pedidas.
    """
    filtrado = {k: v for k, v in esquema_maestro.items() if k in indices}
    if len(filtrado) < len(indices):
        faltantes = set(indices) - set(filtrado.keys())
        logger.warning("catalog_builder: índices no encontrados en esquema: %s", faltantes)
    return construir_catalogo_para_slm(filtrado)