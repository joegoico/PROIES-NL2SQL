from backend.evaluation.metrics import recall_at_k, false_negatives


def test_recall_at_k_encuentra_todas_las_tablas_gold():
    # Arrange
    gold = {"T1", "T7", "T82"}

    ranking = [
        "T7",
        "T1",
        "T46",
        "T82",
        "T56",
    ]

    # Act
    recall = recall_at_k(
        gold=gold,
        ranked=ranking,
        k=5,
    )

    # Assert
    assert recall == 1.0

def test_recall_at_k_detecta_tablas_gold_faltantes():
    # Arrange
    gold = {"T1", "T7", "T82"}

    ranking = [
        "T7",
        "T1",
        "T46",
        "T56",
        "T88",
    ]

    # Act
    recall = recall_at_k(
        gold=gold,
        ranked=ranking,
        k=5,
    )

    # Assert
    assert recall == 2 / 3

def test_recall_at_k_solo_considera_los_primeros_k_resultados():
    # Arrange
    gold = {"T1", "T7", "T82"}

    ranking = [
        "T1",
        "T7",
        "T46",
        "T56",
        "T88",
        "T82",  # está, pero fuera del top 5
    ]

    # Act
    recall = recall_at_k(
        gold=gold,
        ranked=ranking,
        k=5,
    )

    # Assert
    assert recall == 2 / 3

def test_false_negatives_devuelve_tablas_gold_no_recuperadas():
    gold = {"T1", "T82", "T83"}
    predicted = {"T82", "T83", "T69"}

    resultado = false_negatives(
        gold=gold,
        predicted=predicted,
    )

    assert resultado == {"T1"}

def test_false_negatives_devuelve_vacio_si_recupera_todo():
    gold = {"T1", "T82"}
    predicted = {"T1", "T82", "T69"}

    resultado = false_negatives(
        gold=gold,
        predicted=predicted,
    )

    assert resultado == set()