"""Pruebas de validación y curación del dataset para SchemaPrefilter.

Verifica la división de casos ambiguos (DEV_004 -> DEV_004A / DEV_004B),
la reformulación y tablas doradas de DEV_006,
el aislamiento de DEV_022 y de los casos sin tablas doradas en 'pending_review',
la corrección de tablas doradas en DEV_003, DEV_033, DEV_041 y DEV_047,
la integridad de los 32 casos no afectados y la lista exacta de casos evaluables.
"""

from pathlib import Path
from backend.evaluation.dataset_loader import (
    cargar_dataset,
    obtener_casos_evaluables,
)

DATASET_PATH = Path("backend/evaluation/dataset.json")

CASOS_SIN_GOLD_IDS = [
    "DEV_022",
    "DEV_038",
    "DEV_045",
    "DEV_051",
    "DEV_052",
    "DEV_054",
    "DEV_055",
    "DEV_058",
    "DEV_059",
]

CASOS_SIN_GOLD_ESPERADOS = {
    "DEV_022": {
        "id": "DEV_022",
        "split": "pending_review",
        "difficulty": "simple",
        "question": "¿Cómo se componen los ingresos estatales?",
        "gold_tables": None,
    },
    "DEV_038": {
        "id": "DEV_038",
        "split": "pending_review",
        "difficulty": "simple",
        "question": "¿Qué organizaciones poseen más recursos {métrica de recurso}?",
        "gold_tables": None,
        "notes": "Ejemplos: personas trabajando, recursos materiales, presupuesto, etc.",
    },
    "DEV_045": {
        "id": "DEV_045",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "¿Qué organizaciones con proyectos activos poseen además demandas sociales registradas?",
        "gold_tables": None,
    },
    "DEV_051": {
        "id": "DEV_051",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "¿Cuáles son las organizaciones sociales que durante el último año recibieron donaciones provenientes de entidades aportantes y participaron en proyectos activos?",
        "gold_tables": None,
    },
    "DEV_052": {
        "id": "DEV_052",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "¿Qué proyectos financiados por entidades privadas fueron difundidos mediante campañas públicas?",
        "gold_tables": None,
    },
    "DEV_054": {
        "id": "DEV_054",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "Cuales proyectos surgen de demandas directas de la sociedad.",
        "gold_tables": None,
    },
    "DEV_055": {
        "id": "DEV_055",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "Si hay proyectos que han recibido algún subsidio en específico.",
        "gold_tables": None,
    },
    "DEV_058": {
        "id": "DEV_058",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "¿Qué organizaciones participaron en proyectos auditados y financiados por entidades aportantes?",
        "gold_tables": None,
    },
    "DEV_059": {
        "id": "DEV_059",
        "split": "pending_review",
        "difficulty": "complex",
        "question": "¿Qué demandas sociales fueron atendidas mediante proyectos financiados por organizaciones privadas?",
        "gold_tables": None,
    },
}

CASOS_NO_AFECTADOS_ESPERADOS = {
    "DEV_001": {
        "id": "DEV_001",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿Qué organizaciones tienen proyectos actualmente activos?",
        "gold_tables": [
            "T1",
            "T82",
            "T83"
        ]
    },
    "DEV_002": {
        "id": "DEV_002",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿Qué proyectos tienen actualmente las organizaciones relevadas?",
        "gold_tables": [
            "T1",
            "T83",
            "T82"
        ]
    },
    "DEV_005": {
        "id": "DEV_005",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿Qué organizaciones reciben aportes del sector privado?",
        "gold_tables": [
            "T1",
            "T8",
            "T14"
        ]
    },
    "DEV_060": {
        "id": "DEV_060",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿Qué entidades del sector privado realizan aportes a las organizaciones relevadas?",
        "gold_tables": [
            "T1",
            "T8",
            "T14"
        ]
    },
    "DEV_007": {
        "id": "DEV_007",
        "split": "dev",
        "difficulty": "meeting",
        "question": "Si realizan evaluaciones y quienes las realizan.",
        "gold_tables": [
            "T1",
            "T18",
            "T19"
        ]
    },
    "DEV_008": {
        "id": "DEV_008",
        "split": "dev",
        "difficulty": "meeting",
        "question": "que forma de organizacion de trabajo predomina.",
        "gold_tables": [
            "T42",
            "T22"
        ]
    },
    "DEV_009": {
        "id": "DEV_009",
        "split": "dev",
        "difficulty": "meeting",
        "question": "A que areas temáticas se dedica la organizacion.",
        "gold_tables": [
            "T1",
            "T23",
            "T24"
        ]
    },
    "DEV_010": {
        "id": "DEV_010",
        "split": "dev",
        "difficulty": "meeting",
        "question": "Cuantas organizaciones hay que se dedique a x area temática.",
        "gold_tables": [
            "T1",
            "T23",
            "T24"
        ]
    },
    "DEV_012": {
        "id": "DEV_012",
        "split": "dev",
        "difficulty": "meeting",
        "question": "Que rol estan cumpliendo las organizaciones.",
        "gold_tables": [
            "T1",
            "T66",
            "T29"
        ]
    },
    "DEV_013": {
        "id": "DEV_013",
        "split": "dev",
        "difficulty": "meeting",
        "question": "Cual es el rol principal que cumple una organizacion de acuerdo a lo que piensan.",
        "gold_tables": [
            "T1",
            "T66",
            "T29",
            "T28"
        ]
    },
    "DEV_014": {
        "id": "DEV_014",
        "split": "dev",
        "difficulty": "meeting",
        "question": "Cual es el rol que deberian cumplir.",
        "gold_tables": [
            "T1",
            "T66",
            "T28"
        ]
    },
    "DEV_015": {
        "id": "DEV_015",
        "split": "dev",
        "difficulty": "meeting",
        "question": "Preguntas sobre la entrevista, quein es la org y quienes contestan y los datos de las tablas.",
        "gold_tables": [
            "T39",
            "T1"
        ]
    },
    "DEV_016": {
        "id": "DEV_016",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Cuáles son las organizaciones existentes?",
        "gold_tables": [
            "T1"
        ]
    },
    "DEV_017": {
        "id": "DEV_017",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Cuántos proyectos activos tiene cada organización relevada?",
        "gold_tables": [
            "T1",
            "T82",
            "T83"
        ]
    },
    "DEV_021": {
        "id": "DEV_021",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Qué organizaciones reciben aportes del sector privado y qué entidades realizan esos aportes?",
        "gold_tables": [
            "T1",
            "T8",
            "T14"
        ]
    },
    "DEV_023": {
        "id": "DEV_023",
        "split": "dev",
        "difficulty": "simple",
        "question": "Cuantas organizaciones hay?",
        "gold_tables": [
            "T1"
        ]
    },
    "DEV_024": {
        "id": "DEV_024",
        "split": "dev",
        "difficulty": "simple",
        "question": "Que tipos de organizaciones hay?",
        "gold_tables": [
            "T89"
        ]
    },
    "DEV_025": {
        "id": "DEV_025",
        "split": "dev",
        "difficulty": "simple",
        "question": "Decime todas las organizaciones que son {tipo}.",
        "gold_tables": [
            "T89",
            "T1"
        ],
        "notes": "Consulta parametrizada por tipo de organización."
    },
    "DEV_026": {
        "id": "DEV_026",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Qué organizaciones pertenecen a cada tipo de organización?",
        "gold_tables": [
            "T89",
            "T1"
        ]
    },
    "DEV_028": {
        "id": "DEV_028",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Qué proyectos activos tiene cada organización relevada?",
        "gold_tables": [
            "T1",
            "T83",
            "T82"
        ]
    },
    "DEV_030": {
        "id": "DEV_030",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Qué entidades aportantes están registradas?",
        "gold_tables": [
            "T7"
        ]
    },
    "DEV_031": {
        "id": "DEV_031",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Cuáles son las organizaciones que poseen recursos materiales?",
        "gold_tables": [
            "T1",
            "T6"
        ],
        "notes": "Incluye posibles preguntas puntuales por cada tipo de recurso."
    },
    "DEV_032": {
        "id": "DEV_032",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Qué organizaciones cuentan con recursos humanos?",
        "gold_tables": [
            "T1",
            "T3"
        ],
        "notes": "Interesa discriminar principalmente entre personal rentado y no rentado."
    },
    "DEV_034": {
        "id": "DEV_034",
        "split": "dev",
        "difficulty": "simple",
        "question": "¿Cómo se compone el presupuesto del mismo?",
        "gold_tables": [
            "T1",
            "T11",
            "T74"
        ]
    },
    "DEV_035": {
        "id": "DEV_035",
        "split": "dev",
        "difficulty": "simple",
        "question": "Cuales es el presupuesto promedio de {x tipo}.",
        "gold_tables": [
            "T89",
            "T1",
            "T11",
            "T74"
        ],
        "notes": "Consulta parametrizada por tipo de organización."
    },
    "DEV_042": {
        "id": "DEV_042",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Qué organizaciones reciben recursos financieros provenientes de fuentes (o aportes) externas?",
        "gold_tables": [
            "T1",
            "T74",
            "T11"
        ]
    },
    "DEV_043": {
        "id": "DEV_043",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Cuáles son las organizaciones que trabajan sobre {áreas temáticas}?",
        "gold_tables": [
            "T1",
            "T23",
            "T24"
        ]
    },
    "DEV_044": {
        "id": "DEV_044",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Qué proyectos están relacionados con más de una organización?",
        "gold_tables": [
            "T83",
            "T82"
        ]
    },
    "DEV_046": {
        "id": "DEV_046",
        "split": "dev",
        "difficulty": "complex",
        "question": "¿Cuáles son las organizaciones que reciben recursos financieros externos y a qué fines destinan esos fondos?",
        "gold_tables": [
            "T1",
            "T79",
            "T11",
            "T13"
        ],
        "notes": "En estas notas, 'externo' se refiere a casa matriz externa."
    },
    "DEV_048": {
        "id": "DEV_048",
        "split": "dev",
        "difficulty": "complex",
        "question": "¿Cuáles son las organizaciones que poseen recursos humanos y materiales y además cuentan con presupuesto registrado?",
        "gold_tables": [
            "T1",
            "T74",
            "T3",
            "T6"
        ]
    },
    "DEV_049": {
        "id": "DEV_049",
        "split": "dev",
        "difficulty": "complex",
        "question": "¿Qué organizaciones trabajan en áreas vinculadas con problemas sociales y poseen proyectos activos?",
        "gold_tables": [
            "T1",
            "T23",
            "T24",
            "T86",
            "T83",
            "T82",
            "T87"
        ]
    },
    "DEV_050": {
        "id": "DEV_050",
        "split": "dev",
        "difficulty": "complex",
        "question": "¿Cuáles son las organizaciones que reciben aportes externos y participan en proyectos relacionados con otras organizaciones?",
        "gold_tables": [
            "T1",
            "T83",
            "T82",
            "T74"
        ]
    }
}

CASOS_DEV_EVALUABLES_IDS_ESPERADOS = [
    "DEV_001",
    "DEV_002",
    "DEV_003",
    "DEV_004A",
    "DEV_004B",
    "DEV_005",
    "DEV_060",
    "DEV_006",
    "DEV_007",
    "DEV_008",
    "DEV_009",
    "DEV_010",
    "DEV_012",
    "DEV_013",
    "DEV_014",
    "DEV_015",
    "DEV_016",
    "DEV_017",
    "DEV_021",
    "DEV_023",
    "DEV_024",
    "DEV_025",
    "DEV_026",
    "DEV_028",
    "DEV_030",
    "DEV_031",
    "DEV_032",
    "DEV_033",
    "DEV_034",
    "DEV_035",
    "DEV_041",
    "DEV_042",
    "DEV_043",
    "DEV_044",
    "DEV_046",
    "DEV_047",
    "DEV_048",
    "DEV_049",
    "DEV_050",
]


def test_should_split_dev_004_into_dev_004a_and_dev_004b_when_dataset_is_curated() -> None:
    """Verifica que DEV_004 haya sido reemplazado por DEV_004A y DEV_004B con atributos exactos.

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
        "gold_tables": ["T1", "T84", "T85"],
    }
    expected_dev_004b = {
        "id": "DEV_004B",
        "split": "dev",
        "difficulty": "meeting",
        "question": "¿A qué población están dirigidas las organizaciones según sus características?",
        "gold_tables": ["T1", "T22"],
    }

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    assert "DEV_004" not in casos_por_id, "DEV_004 no debe existir como caso independiente"
    assert "DEV_004A" in casos_por_id, "DEV_004A debe estar presente en el dataset"
    assert "DEV_004B" in casos_por_id, "DEV_004B debe estar presente en el dataset"
    assert casos_por_id["DEV_004A"] == expected_dev_004a
    assert casos_por_id["DEV_004B"] == expected_dev_004b


def test_should_reformulate_dev_006_with_state_budget_amounts_and_gold_tables() -> None:
    """Verifica que DEV_006 esté reformulado para montos de presupuesto estatal y tenga gold_tables [T1, T74].

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_question = "¿Qué montos de presupuesto anual declaran las organizaciones relevadas provenientes de fuentes estatales, discriminados por origen?"
    expected_gold_tables = ["T1", "T74"]

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    assert "DEV_006" in casos_por_id, "DEV_006 debe estar presente en el dataset"
    caso_006 = casos_por_id["DEV_006"]
    assert caso_006["split"] == "dev", "DEV_006 debe pertenecer al split dev"
    assert caso_006["difficulty"] == "meeting", "DEV_006 debe conservar su dificultad original meeting"
    assert caso_006["question"] == expected_question, "DEV_006 debe tener la pregunta reformulada exacta"
    assert sorted(caso_006["gold_tables"]) == sorted(expected_gold_tables), "DEV_006 debe tener gold_tables [T1, T74]"


def test_should_isolate_dev_022_under_pending_review_with_null_gold() -> None:
    """Verifica que DEV_022 esté apartado a pending_review con gold_tables null conservando metadatos.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_dev_022 = {
        "id": "DEV_022",
        "split": "pending_review",
        "difficulty": "simple",
        "question": "¿Cómo se componen los ingresos estatales?",
        "gold_tables": None,
    }

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    assert "DEV_022" in casos_por_id, "DEV_022 debe seguir existiendo en el dataset"
    assert casos_por_id["DEV_022"] == expected_dev_022, "DEV_022 debe tener split pending_review y gold_tables null"


def test_should_isolate_null_gold_cases_under_pending_review_when_dataset_is_curated() -> None:
    """Verifica que los 9 casos sin gold_tables tengan split 'pending_review' y mantengan sus demás campos.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_null_ids = set(CASOS_SIN_GOLD_IDS)

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    for case_id in expected_null_ids:
        assert case_id in casos_por_id, f"El caso {case_id} debe existir en el dataset"
        actual_case = casos_por_id[case_id]
        expected_case = CASOS_SIN_GOLD_ESPERADOS[case_id]
        assert actual_case["split"] == "pending_review", f"{case_id} debe tener split 'pending_review'"
        assert actual_case == expected_case, f"{case_id} no debe alterar ningún campo aparte de 'split' y 'gold_tables'"


def test_should_preserve_unaffected_cases_integrity_when_dataset_is_curated() -> None:
    """Verifica que los 32 casos no afectados conserven id, question, gold_tables, difficulty, split y demás atributos.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_unaffected = CASOS_NO_AFECTADOS_ESPERADOS

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    for case_id, expected_data in expected_unaffected.items():
        assert case_id in casos_por_id, f"El caso no afectado {case_id} debe existir en el dataset"
        actual_data = casos_por_id[case_id]
        assert actual_data == expected_data, f"El caso {case_id} debe permanecer estrictamente inalterado"


def test_should_have_curated_gold_tables_for_dev_003_033_041_047() -> None:
    """Verifica que DEV_003, DEV_033, DEV_041 y DEV_047 tengan sus tablas doradas corregidas y atributos intactos.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    casos_esperados = {
        "DEV_003": {
            "id": "DEV_003",
            "split": "dev",
            "difficulty": "meeting",
            "question": "¿A qué población atienden las organizaciones relevadas?",
            "gold_tables": ["T1", "T22"],
        },
        "DEV_033": {
            "id": "DEV_033",
            "split": "dev",
            "difficulty": "simple",
            "question": "¿Cuál es el presupuesto/ingresos anual estimado de cada organización?",
            "gold_tables": ["T1", "T74"],
        },
        "DEV_041": {
            "id": "DEV_041",
            "split": "dev",
            "difficulty": "medium",
            "question": "¿Cuáles son las organizaciones relacionadas con otras organizaciones?",
            "gold_tables": ["T1", "T70"],
        },
        "DEV_047": {
            "id": "DEV_047",
            "split": "dev",
            "difficulty": "complex",
            "question": "¿Qué organizaciones participan en proyectos y además mantienen vínculos con otras organizaciones?",
            "gold_tables": ["T1", "T70", "T83", "T82"],
        },
    }

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_por_id = {caso["id"]: caso for caso in dataset}

    # Assert
    for case_id, expected in casos_esperados.items():
        assert case_id in casos_por_id, f"El caso {case_id} debe existir en el dataset"
        actual = casos_por_id[case_id]
        assert actual["id"] == expected["id"], f"{case_id} debe tener el id esperado"
        assert actual["split"] == expected["split"], f"{case_id} debe pertenecer a split {expected['split']}"
        assert actual["difficulty"] == expected["difficulty"], (
            f"{case_id} debe conservar su dificultad {expected['difficulty']}"
        )
        assert actual["question"] == expected["question"], f"{case_id} no debe modificar su pregunta"
        assert sorted(actual["gold_tables"]) == sorted(expected["gold_tables"]), (
            f"{case_id} debe tener gold_tables={expected['gold_tables']}, obtenido {actual['gold_tables']}"
        )


def test_should_return_exact_39_evaluable_dev_cases_including_identifiers_when_filtered_by_loader() -> None:
    """Verifica que obtener_casos_evaluables devuelva exactamente los 39 casos dev con los identificadores esperados.

    Args:
        None.

    Returns:
        None.
    """
    # Arrange
    expected_ids = CASOS_DEV_EVALUABLES_IDS_ESPERADOS

    # Act
    dataset = cargar_dataset(DATASET_PATH)
    casos_evaluables = obtener_casos_evaluables(dataset, split="dev")
    actual_ids = [c["id"] for c in casos_evaluables]

    # Assert
    assert len(casos_evaluables) == 39, f"Se esperaban 39 casos evaluables, obtenidos {len(casos_evaluables)}"
    assert actual_ids == expected_ids, "La lista e identificación de casos evaluables dev no coincide con lo esperado"


def test_should_have_exactly_48_total_cases_in_dataset_when_curated() -> None:
    """Verifica que el dataset contenga exactamente 48 casos totales en el archivo.

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
