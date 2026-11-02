import pytest

from backend.evaluation.prefilter_evaluator import evaluar_caso_prefilter


class MockPrefilter:
    def obtener_indices(
        self,
        pregunta,
        esquema_maestro,
        top_k=10,
    ):
        return [
            "T1",
            "T46",
            "T82",
            "T7",
            "T10",
            "T20",
        ][:top_k]


class MockPrefilterOutOfTop5:
    def obtener_indices(
        self,
        pregunta,
        esquema_maestro,
        top_k=10,
    ):
        return [
            "T1",
            "T46",
            "T7",
            "T10",
            "T20",
            "T82",
        ][:top_k]


def test_evaluar_caso_prefilter_calcula_recall():
    # Arrange
    caso = {
        "id": "DEV_001",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Qué organizaciones tienen proyectos activos?",
        "gold_tables": ["T1", "T82"],
    }

    esquema_maestro = {}

    prefilter = MockPrefilter()

    # Act
    resultado = evaluar_caso_prefilter(
        caso=caso,
        prefilter=prefilter,
        esquema_maestro=esquema_maestro,
    )

    # Assert
    assert resultado["id"] == "DEV_001"

    assert resultado["gold_tables"] == ["T1", "T82"]

    assert resultado["predicted_tables"] == [
        "T1",
        "T46",
        "T82",
        "T7",
        "T10",
        "T20",
    ]

    assert resultado["recall_at_5"] == 1.0
    assert resultado["recall_at_10"] == 1.0

def test_evaluar_caso_prefilter_detecta_gold_fuera_del_top_5():
    caso = {
        "id": "DEV_002",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Qué organizaciones participan en proyectos?",
        "gold_tables": ["T1", "T82"],
    }


    resultado = evaluar_caso_prefilter(
        caso=caso,
        prefilter=MockPrefilterOutOfTop5(),
        esquema_maestro={},
    )

    assert resultado["recall_at_5"] == 0.5
    assert resultado["recall_at_10"] == 1.0


def test_should_calculate_precision_complete_recovery_fp_fn_and_latency_when_evaluating_case():
    # Arrange
    caso = {
        "id": "DEV_003",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Qué organizaciones participan en proyectos?",
        "gold_tables": ["T1", "T82", "T99"],
    }
    prefilter = MockPrefilterOutOfTop5()

    # Act
    resultado = evaluar_caso_prefilter(
        caso=caso,
        prefilter=prefilter,
        esquema_maestro={},
    )

    # Assert
    assert resultado["precision_at_5"] == 1 / 5
    assert resultado["precision_at_10"] == 2 / 6
    assert resultado["precision_at_k"] == 2 / 6
    assert resultado["complete_recovery_at_5"] is False
    assert resultado["complete_recovery_at_10"] is False
    assert resultado["complete_recovery"] is False
    assert resultado["false_positives"] == ["T46", "T7", "T10", "T20"]
    assert resultado["false_negatives"] == ["T99"]
    assert resultado["false_positives_count"] == 4
    assert resultado["false_negatives_count"] == 1
    assert isinstance(resultado["latencia_ms"], float)
    assert resultado["latencia_ms"] >= 0.0


def test_should_respect_custom_top_k_when_evaluating_case():
    # Arrange
    caso = {
        "id": "DEV_004",
        "split": "dev",
        "difficulty": "medium",
        "question": "¿Qué organizaciones tienen proyectos activos?",
        "gold_tables": ["T1", "T82"],
    }
    prefilter = MockPrefilter()

    # Act
    resultado_k3 = evaluar_caso_prefilter(
        caso=caso,
        prefilter=prefilter,
        esquema_maestro={},
        top_k=3,
    )

    # Assert
    assert resultado_k3["top_k"] == 3
    assert resultado_k3["predicted_tables"] == ["T1", "T46", "T82"]
    assert resultado_k3["recall_at_k"] == 1.0
    assert resultado_k3["precision_at_k"] == 2 / 3
    assert resultado_k3["complete_recovery"] is True
    assert resultado_k3["false_positives"] == ["T46"]
    assert resultado_k3["false_negatives"] == []


def test_should_raise_value_error_when_top_k_is_not_positive():
    # Arrange
    caso = {
        "id": "DEV_005",
        "question": "pregunta",
        "gold_tables": ["T1"],
    }

    # Act & Assert
    with pytest.raises(ValueError, match="top_k"):
        evaluar_caso_prefilter(
            caso=caso,
            prefilter=MockPrefilter(),
            esquema_maestro={},
            top_k=0,
        )
