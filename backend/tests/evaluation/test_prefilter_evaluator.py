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
        ]
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
        ]


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