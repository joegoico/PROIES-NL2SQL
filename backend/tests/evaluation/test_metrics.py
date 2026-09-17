from backend.evaluation.metrics import recall_at_k


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