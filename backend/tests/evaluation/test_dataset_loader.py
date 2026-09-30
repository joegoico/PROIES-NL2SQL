import json

from backend.evaluation.dataset_loader import (
    tiene_gold,
    obtener_casos_evaluables,
    cargar_dataset
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