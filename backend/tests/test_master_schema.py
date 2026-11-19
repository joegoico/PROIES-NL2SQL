"""Tests unitarios (TDD) para la extracción y generación del esquema maestro indexado
(master_schema.json) para la nueva base de datos ObSoC v2.4 conservando únicamente
los comentarios originales del archivo 03_comments.sql.

Verifica que el generador del esquema maestro:
1. Extraiga exactamente las 55 tablas definidas en 01_create_scheme.sql.
2. Asigne claves secuenciales y deterministas T1 a T55.
3. Conserve únicamente los comentarios originales de 03_comments.sql (solo 'org_relacionada'
   posee COMMENT ON TABLE; las 54 tablas restantes tienen descripcion_tabla vacía).
4. Extraiga correctamente los 184 comentarios de columnas originales, incluyendo comentarios
   multilínea y comillas escapadas.
5. Genere un archivo master_schema.json válido y estructurado.
"""

from pathlib import Path
import json
import pytest

from backend.custom.master_schema import parse_to_indexed_schema, init_schema
from backend.database import SQL_INPUT


def test_should_extract_exactly_55_tables_when_parsing_new_schema() -> None:
    """Verifica que el parser extraiga las 55 tablas del esquema con identificadores T1..T55.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    comments_file = Path(SQL_INPUT)

    # Act
    schema = parse_to_indexed_schema(str(comments_file))

    # Assert
    assert len(schema) == 55, (
        f"Se esperaban 55 tablas en el nuevo esquema, pero se obtuvieron {len(schema)}"
    )
    expected_keys = [f"T{i}" for i in range(1, 56)]
    assert list(schema.keys()) == expected_keys, (
        "Las claves del esquema maestro deben ser exactamente T1..T55 en orden"
    )


def test_should_keep_only_original_table_comments_without_adding_synthetic_ones() -> None:
    """Verifica que solo 'org_relacionada' tenga descripción de tabla y las otras 54 queden vacías.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    comments_file = Path(SQL_INPUT)

    # Act
    schema = parse_to_indexed_schema(str(comments_file))

    # Assert
    tablas_con_descripcion = {
        data["nombre_real"]: data["descripcion_tabla"]
        for data in schema.values()
        if data.get("descripcion_tabla")
    }
    for t_id, table_data in schema.items():
        nombre = table_data.get("nombre_real", "")
        assert nombre, f"La tabla {t_id} tiene nombre_real vacío"
        assert nombre == nombre.lower(), (
            f"El nombre de la tabla {t_id} ('{nombre}') debe estar en minúsculas"
        )

    assert list(tablas_con_descripcion.keys()) == ["org_relacionada"], (
        "Solo 'org_relacionada' posee COMMENT ON TABLE en el script original"
    )
    assert tablas_con_descripcion["org_relacionada"] == "Organización/es con las que se relaciona"


def test_should_extract_original_184_column_comments_including_multiline() -> None:
    """Verifica que se extraigan exactamente los 184 comentarios de columnas originales.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    comments_file = Path(SQL_INPUT)

    # Act
    schema = parse_to_indexed_schema(str(comments_file))
    tablas_por_nombre = {data["nombre_real"]: data for data in schema.values()}
    total_columnas_comentadas = sum(len(data["columnas"]) for data in schema.values())

    # Assert
    assert total_columnas_comentadas == 184, (
        f"Se esperaban exactamente los 184 comentarios de columna originales, obtenidos {total_columnas_comentadas}"
    )
    assert "organizacion" in tablas_por_nombre
    assert "aporte_estatal" in tablas_por_nombre
    assert "actividad" in tablas_por_nombre
    assert "area" in tablas_por_nombre

    # Las tablas catálogo sin comentarios en el archivo original deben tener columnas={}
    assert tablas_por_nombre["area"]["columnas"] == {}
    assert tablas_por_nombre["participante"]["columnas"] == {}

    # Verificar comentario multilínea original en aporte_estatal.origen
    aporte_cols = tablas_por_nombre["aporte_estatal"]["columnas"]
    assert "origen" in aporte_cols
    assert "Nacional" in aporte_cols["origen"]


def test_should_generate_valid_master_schema_json_file(
    tmp_path: Path,
    monkeypatch: pytest.MonkeyPatch,
) -> None:
    """Verifica que init_schema escriba el archivo JSON correctamente en disco.

    Args:
        tmp_path: Directorio temporal provisto por pytest.
        monkeypatch: Fixture de MonkeyPatch de pytest.

    Returns:
        None.
    """
    # Arrange
    output_json = tmp_path / "test_master_schema.json"
    monkeypatch.setattr("backend.custom.master_schema.JSON_OUTPUT", str(output_json))

    # Act
    init_schema()

    # Assert
    assert output_json.exists(), "El archivo master_schema.json generado debe existir"
    with open(output_json, "r", encoding="utf-8") as f:
        data = json.load(f)

    assert len(data) == 55, (
        f"El JSON generado debe contener 55 tablas, pero tiene {len(data)}"
    )
    assert "T1" in data
    assert "T55" in data
