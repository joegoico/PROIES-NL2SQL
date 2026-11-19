import re
import json
import os
from pathlib import Path
from typing import Any
from backend.database import SQL_INPUT, JSON_OUTPUT

_RE_CREATE_TABLE = re.compile(
    r"CREATE\s+TABLE\s+(?:IF\s+NOT\s+EXISTS\s+)?([a-zA-Z0-9_]+)\s*\(",
    re.IGNORECASE,
)

_RE_COMMENT_ON_TABLE = re.compile(
    r"COMMENT\s+ON\s+TABLE\s+([a-zA-Z0-9_]+)\s+IS\s+'((?:''|[^'])*)';",
    re.IGNORECASE,
)

_RE_COMMENT_ON_COLUMN = re.compile(
    r"COMMENT\s+ON\s+COLUMN\s+([a-zA-Z0-9_]+)\.([a-zA-Z0-9_]+)\s+IS\s+'((?:''|[^'])*)';",
    re.IGNORECASE | re.DOTALL,
)


def parse_to_indexed_schema(
    sql_file: str,
    scheme_file: str | None = None,
) -> dict[str, dict[str, Any]]:
    """Construye el esquema maestro indexado combinando el DDL de tablas y los comentarios SQL originales.

    Descubre las tablas existentes a partir de `01_create_scheme.sql` (ubicando a `organizacion`
    como `T1` y el resto en su orden de definición) con descripción vacía por defecto, y luego
    asigna únicamente los comentarios de tabla (`COMMENT ON TABLE`) y de columna (`COMMENT ON COLUMN`)
    presentes en el archivo `03_comments.sql` sin agregar comentarios sintéticos.

    Args:
        sql_file (str): Ruta al archivo SQL de comentarios (`03_comments.sql`).
        scheme_file (str | None): Ruta opcional al archivo DDL (`01_create_scheme.sql`). Si se omite,
            se busca `01_create_scheme.sql` en el mismo directorio que `sql_file`.

    Returns:
        dict[str, dict[str, Any]]: Diccionario del esquema maestro indexado (`T1`..`Tn`).

    Raises:
        FileNotFoundError: Si no se encuentra el archivo `sql_file`.
    """
    if not os.path.exists(sql_file):
        raise FileNotFoundError(f"No se encontró el archivo SQL en: {sql_file}")

    schema_master: dict[str, dict[str, Any]] = {}
    table_to_id: dict[str, str] = {}
    table_counter = 1

    # 1. Descubrir tablas desde 01_create_scheme.sql si está disponible
    resolved_scheme_file = (
        Path(scheme_file)
        if scheme_file is not None
        else Path(sql_file).resolve().parent / "01_create_scheme.sql"
    )
    if resolved_scheme_file.exists():
        ddl_content = resolved_scheme_file.read_text(encoding="utf-8")
        ddl_tables = [
            t.lower().strip() for t in _RE_CREATE_TABLE.findall(ddl_content)
        ]
        # Mantener 'organizacion' como T1 y conservar el orden del DDL para el resto
        ordered_ddl_tables: list[str] = []
        if "organizacion" in ddl_tables:
            ordered_ddl_tables.append("organizacion")
        for t_name in ddl_tables:
            if t_name not in ordered_ddl_tables:
                ordered_ddl_tables.append(t_name)

        for t_name_lower in ordered_ddl_tables:
            t_id = f"T{table_counter}"
            table_to_id[t_name_lower] = t_id
            schema_master[t_id] = {
                "nombre_real": t_name_lower,
                "descripcion_tabla": "",
                "columnas": {},
            }
            table_counter += 1

    with open(sql_file, "r", encoding="utf-8") as f:
        content = f.read()

        # 2. Asignar comentarios de tabla existentes en el archivo de comentarios
        table_matches = _RE_COMMENT_ON_TABLE.findall(content)

        for table_name, table_comment in table_matches:
            t_name_lower = table_name.lower().strip()
            clean_comment = table_comment.replace("''", "'").strip()
            if t_name_lower in table_to_id:
                t_id = table_to_id[t_name_lower]
                schema_master[t_id]["descripcion_tabla"] = clean_comment
            else:
                t_id = f"T{table_counter}"
                table_to_id[t_name_lower] = t_id
                schema_master[t_id] = {
                    "nombre_real": t_name_lower,
                    "descripcion_tabla": clean_comment,
                    "columnas": {},
                }
                table_counter += 1

        # 3. Asignar únicamente los comentarios de columnas presentes en el archivo
        col_matches = _RE_COMMENT_ON_COLUMN.findall(content)

        for t_name, col_name, col_comment in col_matches:
            t_lower = t_name.lower().strip()
            col_lower = col_name.lower().strip()
            if t_lower in table_to_id:
                t_id = table_to_id[t_lower]
                clean_col_comment = col_comment.replace("''", "'").strip()
                schema_master[t_id]["columnas"][col_lower] = clean_col_comment

    return schema_master


def init_schema() -> None:
    """Genera y persiste el archivo JSON del esquema maestro en disco.

    Lee el archivo SQL configurado en SQL_INPUT junto con el DDL del esquema,
    extrae el esquema indexado mediante parse_to_indexed_schema y lo serializa
    con formato legible en JSON_OUTPUT.

    Args:
        None.

    Returns:
        None.
    """
    os.makedirs(os.path.dirname(JSON_OUTPUT), exist_ok=True)
    data = parse_to_indexed_schema(SQL_INPUT)
    with open(JSON_OUTPUT, "w", encoding="utf-8") as f:
        json.dump(data, f, indent=4, ensure_ascii=False)
    print(f"Esquema maestro generado y guardado en: {JSON_OUTPUT}")
