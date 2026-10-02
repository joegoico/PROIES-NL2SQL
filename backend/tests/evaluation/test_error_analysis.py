from backend.evaluation.error_analysis import contar_false_negatives_por_tabla, calcular_recall_por_tabla, calcular_estadisticas_por_tabla


def test_calcular_estadisticas_por_tabla():
    resultados = [
        {
            "gold_tables": ["T1", "T82"],
            "predicted_tables": ["T1", "T82", "T7"],
        },
        {
            "gold_tables": ["T1", "T69"],
            "predicted_tables": ["T1"],
        },
        {
            "gold_tables": ["T1", "T82"],
            "predicted_tables": ["T82"],
        },
    ]

    estadisticas = calcular_estadisticas_por_tabla(
        resultados
    )

    assert estadisticas["T1"] == {
        "gold_count": 3,
        "retrieved_count": 2,
        "false_negative_count": 1,
        "recall": 2 / 3,
    }

    assert estadisticas["T82"] == {
        "gold_count": 2,
        "retrieved_count": 2,
        "false_negative_count": 0,
        "recall": 1.0,
    }

    assert estadisticas["T69"] == {
        "gold_count": 1,
        "retrieved_count": 0,
        "false_negative_count": 1,
        "recall": 0.0,
    }


def test_calcular_recall_por_tabla():
    resultados = [
        {
            "gold_tables": ["T1", "T82"],
            "predicted_tables": ["T1", "T82", "T7"],
        },
        {
            "gold_tables": ["T1", "T69"],
            "predicted_tables": ["T1"],
        },
        {
            "gold_tables": ["T1", "T82"],
            "predicted_tables": ["T82"],
        },
    ]

    recall = calcular_recall_por_tabla(resultados)

    assert recall["T1"] == 2 / 3
    assert recall["T82"] == 1.0
    assert recall["T69"] == 0.0

def test_calcular_recall_por_tabla_ignora_tablas_solo_predichas():
    resultados = [
        {
            "gold_tables": ["T1"],
            "predicted_tables": ["T1", "T46", "T88"],
        }
    ]

    recall = calcular_recall_por_tabla(resultados)

    assert recall == {
        "T1": 1.0,
    }


def test_contar_false_negatives_por_tabla():
    resultados = [
        {
            "gold_tables": ["T1", "T82", "T83"],
            "predicted_tables": ["T82", "T83"],
        },
        {
            "gold_tables": ["T1", "T69"],
            "predicted_tables": ["T1"],
        },
        {
            "gold_tables": ["T1", "T82"],
            "predicted_tables": ["T82"],
        },
    ]

    conteo = contar_false_negatives_por_tabla(resultados)

    assert conteo == {
        "T1": 2,
        "T69": 1,
    }

def test_estadisticas_por_tabla_no_incluye_tablas_solo_predichas():
    resultados = [
        {
            "gold_tables": ["T1"],
            "predicted_tables": ["T1", "T46", "T88"],
        }
    ]

    estadisticas = calcular_estadisticas_por_tabla(
        resultados
    )

    assert set(estadisticas.keys()) == {"T1"}