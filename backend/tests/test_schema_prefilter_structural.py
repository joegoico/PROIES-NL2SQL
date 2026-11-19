"""Tests unitarios y de integración (TDD) para la co-recuperación estructural
de tablas catálogo-puente en SchemaPrefilter sobre el nuevo esquema ObSoC v2.4 (55 tablas).

Verifica que:
1. Las tablas puente con sufijo `_org` vinculadas mediante FK a su catálogo sean extraídas
   de `01_create_scheme.sql`, excluyendo tablas de entidad como `trabajadores_org`.
2. Una tabla puente relevante permita co-recuperar su catálogo relacionado.
3. Los metadatos de columnas del par estructural permitan recuperar `participante` (T40)
   y `participante_org` (T41).
4. En DEV_049 se recuperen tanto el catálogo `area` (T5) como su puente `area_org` (T6).
5. No se recuperen catálogos sin relación estructural activa con la consulta.
6. El comportamiento y ranking de tablas de entidad no relacionadas se conserve intacto.
"""

from pathlib import Path
import pytest

from backend.custom.schema_prefilter import SchemaPrefilter
from backend.utils.schema_loader import cargar_esquema_maestro


@pytest.fixture
def master_schema() -> dict:
    """Carga el esquema maestro real de 55 tablas (ObSoC v2.4).

    Returns:
        dict: Diccionario con las 55 tablas indexadas del esquema maestro.
    """
    return cargar_esquema_maestro(Path("data/master_schema.json"))


def test_should_recover_related_catalog_when_junction_table_is_relevant() -> None:
    """Verifica que una tabla catálogo vinculada estructuralmente a una tabla puente `_org`
    sea co-recuperada cuando dicha tabla puente resulta relevante para la consulta.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    prefilter = SchemaPrefilter()
    mock_schema = {
        "T_org": {
            "nombre_real": "organizacion",
            "descripcion_tabla": "Tabla de organizaciones",
            "columnas": {},
        },
        "T_bridge": {
            "nombre_real": "participante_org",
            "descripcion_tabla": "Vincula organizaciones con las edades de las personas",
            "columnas": {
                "id_organizacion": "ID organización (FK a organizacion)",
                "id_participante": "ID participante (FK a participante)",
            },
        },
        "T_cat": {
            "nombre_real": "participante",
            "descripcion_tabla": "",
            "columnas": {},
        },
    }
    pregunta = "¿A qué edades pertenecen las personas atendidas?"

    # Act
    indices = prefilter.obtener_indices(pregunta, mock_schema, top_k=2)

    # Assert
    assert "T_cat" in indices


def test_should_extract_bridge_catalog_pairs_from_new_sql_schema(
    master_schema: dict,
) -> None:
    """Verifica que `_extraer_relaciones_puente_catalogo` detecte los pares `<catalogo>_org -> <catalogo>`
    en `01_create_scheme.sql` y excluya tablas de entidad como `trabajadores_org` (T53).

    Args:
        master_schema: Esquema maestro cargado desde master_schema.json.

    Returns:
        None.
    """
    # Arrange
    prefilter = SchemaPrefilter()

    # Act
    pares = prefilter._extraer_relaciones_puente_catalogo(master_schema)

    # Assert
    # T6 (area_org) -> T5 (area) y T41 (participante_org) -> T40 (participante)
    assert ("T6", "T5") in pares
    assert ("T41", "T40") in pares
    assert ("T34", "T33") in pares
    # T53 (trabajadores_org) no debe figurar como tabla puente
    origenes = {id_puente for id_puente, _ in pares}
    assert "T53" not in origenes


def test_should_incorporate_participante_pair_when_age_participation_queried(
    master_schema: dict,
) -> None:
    """Verifica que T40 (`participante`) y T41 (`participante_org`) se incorporen al Top-10
    cuando se consulta por edad y quiénes participan en las organizaciones.

    En el nuevo esquema, `T41` (`participante_org`) contiene el comentario de columna
    '6.3.1. Según edad quienes participan de la organización?' y posee una FK hacia `T40` (`participante`).

    Args:
        master_schema: Esquema maestro cargado desde master_schema.json.

    Returns:
        None.
    """
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = "¿Según la edad a quiénes están dirigidas las organizaciones relevadas?"

    # Act
    indices = prefilter.obtener_indices(pregunta, master_schema, top_k=10)

    # Assert
    assert "T41" in indices
    assert "T40" in indices


def test_should_incorporate_area_and_area_org_in_dev_049_via_structural_recovery(
    master_schema: dict,
) -> None:
    """Verifica que T5 (`area`) y T6 (`area_org`) sean recuperadas en el Top-10 de DEV_049.

    Args:
        master_schema: Esquema maestro cargado desde master_schema.json.

    Returns:
        None.
    """
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = (
        "¿Qué organizaciones trabajan en áreas vinculadas con problemas sociales y "
        "poseen proyectos activos?"
    )

    # Act
    indices = prefilter.obtener_indices(pregunta, master_schema, top_k=10)

    # Assert
    assert "T5" in indices
    assert "T6" in indices


def test_should_not_recover_catalogs_without_valid_structural_relationship(
    master_schema: dict,
) -> None:
    """Verifica que una consulta financiera no co-recupere catálogos no relacionados como T40 o T5.

    Args:
        master_schema: Esquema maestro cargado desde master_schema.json.

    Returns:
        None.
    """
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = "¿Cómo se compone el presupuesto anual de las organizaciones?"

    # Act
    indices = prefilter.obtener_indices(pregunta, master_schema, top_k=10)

    # Assert
    assert "T40" not in indices
    assert "T5" not in indices


def test_should_preserve_current_behavior_for_unrelated_tables(
    master_schema: dict,
) -> None:
    """Verifica que las tablas de entidad directas T1 (`organizacion`) y T2 (`actividad`)
    encabecen el ranking en consultas directas sin ser degradadas por la propagación estructural.

    Args:
        master_schema: Esquema maestro cargado desde master_schema.json.

    Returns:
        None.
    """
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = "¿Qué actividades tienen actualmente las organizaciones relevadas?"

    # Act
    indices = prefilter.obtener_indices(pregunta, master_schema, top_k=5)

    # Assert
    assert "T1" in indices
    assert "T2" in indices
    assert set(indices[:2]) == {"T1", "T2"}
