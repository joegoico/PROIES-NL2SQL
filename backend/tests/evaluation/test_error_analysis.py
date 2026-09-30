from backend.evaluation.error_analysis import contar_false_negatives_por_tabla


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