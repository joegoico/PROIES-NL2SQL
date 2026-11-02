import json

from backend.evaluation.dataset_loader import (
    calcular_cobertura_dataset,
    cargar_dataset,
    obtener_casos_evaluables,
    tiene_gold,
)
from backend.evaluation.dataset_validator import validar_gold_tables

def test_tiene_gold_devuelve_true_si_gold_tables_esta_definido():
    caso = {
        "id": "DEV_001",
        "gold_tables": ["T1", "T82"],
    }

    assert tiene_gold(caso) is True


def test_tiene_gold_devuelve_false_si_gold_tables_es_none():
    caso = {
        "id": "DEV_001",
        "gold_tables": None,
    }

    assert tiene_gold(caso) is False

def test_cargar_dataset_dev(tmp_path):
    dataset = [
        {
            "id": "DEV_001",
            "split": "dev",
            "difficulty": "simple",
            "question": "¿Cuántas organizaciones hay?",
            "gold_tables": ["T1"],
        }
    ]

    path = tmp_path / "dataset.json"

    path.write_text(
        json.dumps(dataset),
        encoding="utf-8",
    )

    resultado = cargar_dataset(path)

    assert len(resultado) == 1
    assert resultado[0]["id"] == "DEV_001"
    assert resultado[0]["gold_tables"] == ["T1"]

def test_obtener_casos_evaluables_filtra_por_split_y_gold():
    dataset = [
        {
            "id": "DEV_001",
            "split": "dev",
            "gold_tables": ["T1"],
        },
        {
            "id": "DEV_002",
            "split": "dev",
            "gold_tables": None,
        },
        {
            "id": "VAL_001",
            "split": "validation",
            "gold_tables": ["T82"],
        },
    ]

    resultado = obtener_casos_evaluables(
        dataset=dataset,
        split="dev",
    )

    assert len(resultado) == 1
    assert resultado[0]["id"] == "DEV_001"

def test_validar_gold_tables_detecta_tabla_inexistente():
    caso = {
        "id": "DEV_017",
        "gold_tables": ["T1", "82", "T83"],
    }

    esquema_maestro = {
        "T1": {},
        "T82": {},
        "T83": {},
    }

    errores = validar_gold_tables(
        caso=caso,
        esquema_maestro=esquema_maestro,
    )

    assert errores == ["82"]

def test_validar_gold_tables_acepta_tablas_existentes():
    caso = {
        "id": "DEV_017",
        "gold_tables": ["T1", "T82", "T83"],
    }

    esquema_maestro = {
        "T1": {},
        "T82": {},
        "T83": {},
    }

    errores = validar_gold_tables(
        caso=caso,
        esquema_maestro=esquema_maestro,
    )

    assert errores == []


def test_should_report_dataset_coverage_and_identify_missing_gold_ids_when_some_cases_lack_gold():
    # Arrange
    dataset = [
        {"id": "DEV_001", "split": "dev", "gold_tables": ["T1"]},
        {"id": "DEV_002", "split": "dev", "gold_tables": None},
        {"id": "DEV_003", "split": "dev", "gold_tables": ["T82"]},
        {"id": "DEV_004", "split": "dev"},
        {"id": "VAL_001", "split": "validation", "gold_tables": None},
    ]

    # Act
    cobertura = calcular_cobertura_dataset(dataset=dataset, split="dev")

    # Assert
    assert cobertura == {
        "total_casos": 4,
        "casos_evaluables": 2,
        "casos_sin_gold": 2,
        "ids_sin_gold": ["DEV_002", "DEV_004"],
        "cobertura_dataset": 0.5,
    }
