"""Pruebas de validación y curación del dataset para SchemaPrefilter en ObSoC v2.4 (T1-T55).

Verifica la migración del dataset al esquema ObSoC v2.4:
- Existencia de todas las gold_tables en data/master_schema.json (T1-T55).
- Aislamiento en 'pending_review' con gold_tables=None de los 15 casos sin soporte directo
  (incluyendo DEV_008, DEV_030, DEV_033, DEV_035, DEV_044 y DEV_046).
- Reformulación de preguntas y gold_tables en casos afectados (DEV_001, DEV_006, DEV_017,
  DEV_028, DEV_034, DEV_048, DEV_049 y DEV_050).
- Uso de identidad (T33) e identidad_org (T34) en consultas de tipo de organización
  (DEV_024, DEV_025 y DEV_026), excluyendo T51 y T52.
- Exclusión de casos pending_review en obtener_casos_evaluables (33 casos dev evaluables).
- Eliminación del supuesto fijo de 39 casos en ejecutar_benchmark_completo sin sobrescribir
  el benchmark histórico.
"""

from pathlib import Path

from backend.evaluation.dataset_loader import (
    cargar_dataset,
    obtener_casos_evaluables,
)
from backend.evaluation.dataset_validator import validar_gold_tables
from backend.evaluation.run_prefilter_benchmark_curated import (
    ejecutar_benchmark_completo,
)
from backend.utils.schema_loader import cargar_esquema_maestro

DATASET_PATH = Path("backend/evaluation/dataset.json")
SCHEMA_PATH = Path("data/master_schema.json")
FALLBACK_SCHEMA_PATH = Path("backend/master_schema.json")

CASOS_PENDING_REVIEW_IDS = [
    "DEV_008",
    "DEV_022",
    "DEV_030",
    "DEV_033",
    "DEV_035",
    "DEV_038",
    "DEV_044",
    "DEV_045",
    "DEV_046",
    "DEV_051",
    "DEV_052",
    "DEV_054",
    "DEV_055",
    "DEV_058",
    "DEV_059",
]

CASOS_REFORMULADOS_ESPERADOS = {
    "DEV_001": {
        "question": "¿Qué organizaciones realizan proyectos o actividades?",
        "gold_tables": ["T1", "T2"],
    },
    "DEV_006": {
        "question": "¿Qué aportes estatales y composición porcentual de financiamiento estatal declaran las organizaciones relevadas, discriminados por origen?",
        "gold_tables": ["T1", "T4"],
    },
    "DEV_017": {
        "question": "¿Cuántos proyectos o actividades realiza cada organización relevada?",
        "gold_tables": ["T1", "T2"],
    },
    "DEV_028": {
        "question": "¿Qué proyectos o actividades realiza cada organización relevada?",
        "gold_tables": ["T1", "T2"],
    },
    "DEV_034": {
        "question": "¿Cómo se compone porcentualmente el financiamiento de las organizaciones relevadas según el origen de los recursos?",
        "gold_tables": ["T1"],
    },
    "DEV_048": {
        "question": "¿Cuáles son las organizaciones que poseen recursos humanos y equipamiento y además registran composición porcentual de recursos financieros?",
        "gold_tables": ["T1", "T19", "T20", "T53"],
    },
    "DEV_049": {
        "question": "¿Qué organizaciones trabajan en áreas vinculadas con problemáticas sociales y desarrollan proyectos o actividades?",
        "gold_tables": ["T1", "T2", "T5", "T6", "T46"],
    },
    "DEV_050": {
        "question": "¿Cuáles son las organizaciones que reciben aportes estatales externos y mantienen vínculos interinstitucionales con otras organizaciones?",
        "gold_tables": ["T1", "T4", "T39", "T54"],
    },
}

CASOS_DEV_GOLD_TABLES_ESPERADOS = {
    "DEV_001": ["T1", "T2"],
    "DEV_002": ["T1", "T2"],
    "DEV_003": ["T1"],
    "DEV_004A": ["T1", "T40", "T41"],
    "DEV_004B": ["T1"],
    "DEV_005": ["T1"],
    "DEV_060": ["T1"],
    "DEV_006": ["T1", "T4"],
    "DEV_007": ["T1", "T27", "T42", "T43"],
    "DEV_009": ["T1", "T5", "T6"],
    "DEV_010": ["T1", "T5", "T6"],
    "DEV_012": ["T1"],
    "DEV_013": ["T1"],
    "DEV_014": ["T1"],
    "DEV_015": ["T1", "T18", "T49"],
    "DEV_016": ["T1"],
    "DEV_017": ["T1", "T2"],
    "DEV_021": ["T1"],
    "DEV_023": ["T1"],
    "DEV_024": ["T33"],
    "DEV_025": ["T1", "T33", "T34"],
    "DEV_026": ["T1", "T33", "T34"],
    "DEV_028": ["T1", "T2"],
    "DEV_031": ["T1", "T19", "T20"],
    "DEV_032": ["T1", "T53"],
    "DEV_034": ["T1"],
    "DEV_041": ["T1", "T39", "T54"],
    "DEV_042": ["T1", "T4"],
    "DEV_043": ["T1", "T5", "T6"],
    "DEV_047": ["T1", "T2", "T39", "T54"],
    "DEV_048": ["T1", "T19", "T20", "T53"],
    "DEV_049": ["T1", "T2", "T5", "T6", "T46"],
    "DEV_050": ["T1", "T4", "T39", "T54"],
}

CASOS_DEV_EVALUABLES_IDS_ESPERADOS = list(CASOS_DEV_GOLD_TABLES_ESPERADOS.keys())


def test_should_have_valid_obsoc_v24_gold_tables_for_all_dev_cases() -> None:
    """Verifica que todos los casos dev tengan gold_tables no vacías existentes en master_schema.json (T1-T55).

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    esquema_maestro = cargar_esquema_maestro(
        schema_path=SCHEMA_PATH,
        fallback_path=FALLBACK_SCHEMA_PATH,
    )

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_dev = [caso for caso in dataset if caso.get("split") == "dev"]

    # Assert
    assert len(casos_dev) == 33, f"Se esperaban 33 casos en split 'dev', obtenidos {len(casos_dev)}"
    for caso in casos_dev:
        cid = caso["id"]
        gold = caso.get("gold_tables")
        assert isinstance(gold, list) and len(gold) > 0, f"{cid} en split 'dev' debe tener gold_tables no vacío"
        errores = validar_gold_tables(caso=caso, esquema_maestro=esquema_maestro)
        assert errores == [], f"{cid} contiene gold_tables inexistentes en ObSoC v2.4: {errores}"
        assert sorted(gold) == sorted(CASOS_DEV_GOLD_TABLES_ESPERADOS[cid]), (
            f"{cid} debe tener gold_tables={CASOS_DEV_GOLD_TABLES_ESPERADOS[cid]}, obtenido {gold}"
        )


def test_should_isolate_unsupported_and_null_gold_cases_under_pending_review() -> None:
    """Verifica que los 15 casos sin soporte en ObSoC v2.4 tengan split 'pending_review' y gold_tables None.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_pending_ids = set(CASOS_PENDING_REVIEW_IDS)

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}
    casos_pending = [caso for caso in dataset if caso.get("split") == "pending_review"]

    # Assert
    assert len(casos_pending) == 15, f"Se esperaban 15 casos en 'pending_review', obtenidos {len(casos_pending)}"
    assert {c["id"] for c in casos_pending} == expected_pending_ids
    for cid in expected_pending_ids:
        assert cid in casos_por_id, f"El caso {cid} debe existir en el dataset"
        assert casos_por_id[cid]["split"] == "pending_review", f"{cid} debe pertenecer a 'pending_review'"
        assert casos_por_id[cid]["gold_tables"] is None, f"{cid} debe tener gold_tables=None"


def test_should_reformulate_affected_cases_according_to_obsoc_v24_semantics() -> None:
    """Verifica las preguntas reformuladas y sus gold_tables para ObSoC v2.4 sin mencionar montos ni estados inexistentes.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_reformulated = CASOS_REFORMULADOS_ESPERADOS

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    for cid, expected in expected_reformulated.items():
        assert cid in casos_por_id, f"El caso reformulado {cid} debe estar presente en el dataset"
        caso = casos_por_id[cid]
        assert caso["split"] == "dev", f"{cid} debe permanecer en split 'dev'"
        assert caso["question"] == expected["question"], f"{cid} no coincide con la reformulación esperada"
        assert sorted(caso["gold_tables"]) == sorted(expected["gold_tables"]), (
            f"{cid} debe tener gold_tables={expected['gold_tables']}, obtenido {caso['gold_tables']}"
        )
        assert "activos" not in caso["question"].lower(), f"{cid} no debe consultar proyectos 'activos'"


def test_should_use_identidad_t33_and_t34_for_organization_type_queries() -> None:
    """Verifica que DEV_024, DEV_025 y DEV_026 utilicen T33/T34 (identidad) y no T51/T52 (tipo_organizacion).

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_org_type_gold = {
        "DEV_024": ["T33"],
        "DEV_025": ["T1", "T33", "T34"],
        "DEV_026": ["T1", "T33", "T34"],
    }

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    for cid, expected_gold in expected_org_type_gold.items():
        caso = casos_por_id[cid]
        gold = caso["gold_tables"]
        assert sorted(gold) == sorted(expected_gold), f"{cid} debe usar {expected_gold}, obtenido {gold}"
        assert "T51" not in gold and "T52" not in gold, f"{cid} no debe usar T51 ni T52"


def test_should_split_dev_004_into_dev_004a_and_dev_004b_mapped_to_obsoc_v24() -> None:
    """Verifica que DEV_004A apunte a participante (T1, T40, T41) y DEV_004B a organizacion (T1).

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_dev_004a = {
        "id": "DEV_004A",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿A qué grupos etarios están dirigidas las organizaciones relevadas?",
        "gold_tables": ["T1", "T40", "T41"],
    }
    expected_dev_004b = {
        "id": "DEV_004B",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿A qué población están dirigidas las organizaciones según sus características?",
        "gold_tables": ["T1"],
    }

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    assert "DEV_004" not in casos_por_id, "DEV_004 no debe existir como caso independiente"
    assert casos_por_id["DEV_004A"] == expected_dev_004a
    assert casos_por_id["DEV_004B"] == expected_dev_004b


def test_should_return_exact_33_evaluable_dev_cases_excluding_pending_review() -> None:
    """Verifica que obtener_casos_evaluables devuelva los 33 casos dev y excluya todos los pending_review.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_ids = CASOS_DEV_EVALUABLES_IDS_ESPERADOS
    pending_ids = set(CASOS_PENDING_REVIEW_IDS)

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_evaluables = obtener_casos_evaluables(dataset, split="dev")
    actual_ids = [c["id"] for c in casos_evaluables]

    # Assert
    assert len(casos_evaluables) == 33, f"Se esperaban 33 casos evaluables, obtenidos {len(casos_evaluables)}"
    assert actual_ids == expected_ids, "Los IDs de casos evaluables dev no coinciden con lo esperado"
    assert pending_ids.isdisjoint(set(actual_ids)), "Ningún caso en pending_review debe incluirse como evaluable"


def test_should_have_exactly_48_total_cases_in_dataset_when_curated() -> None:
    """Verifica que el dataset conserve exactamente 48 casos totales (33 dev + 15 pending_review).

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_total_cases = 48

    # Act
    dataset = cargar_dataset(DATASET_PATH)

    # Assert
    assert len(dataset) == expected_total_cases, f"Se esperaban 48 casos totales, obtenidos {len(dataset)}"


def test_should_run_curated_benchmark_dynamically_without_hardcoded_39_cases(tmp_path: Path) -> None:
    """Verifica que ejecutar_benchmark_completo derive dinámicamente los casos evaluables y excluidos sin exigir 39.

    Args:
        tmp_path: Directorio temporal provisto por pytest para escribir reportes sin tocar históricos.

    Returns:
        None.
    """
    # Arrange
    out_md = tmp_path / "report_obsoc_v24.md"
    out_json = tmp_path / "report_obsoc_v24.json"

    # Act
    resultado = ejecutar_benchmark_completo(
        dataset_path=DATASET_PATH,
        schema_path=SCHEMA_PATH,
        fallback_schema_path=FALLBACK_SCHEMA_PATH,
        split="dev",
        top_k=10,
        output_md_path=out_md,
        output_json_path=out_json,
    )

    # Assert
    metricas = resultado["metricas"]
    assert metricas["casos_evaluables"] == 33
    assert metricas["casos_excluidos"] == 15
    assert out_md.exists()
    assert out_json.exists()

