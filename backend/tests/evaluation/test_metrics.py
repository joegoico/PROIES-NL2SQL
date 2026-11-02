import pytest

from backend.evaluation.metrics import (
    calcular_percentil,
    false_negatives,
    false_positives,
    is_complete_recovery,
    precision_at_k,
    recall_at_k,
)


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


def test_should_calculate_precision_at_k_when_predictions_are_evaluated():
    # Arrange
    gold = {"T1", "T82"}
    ranking = ["T1", "T46", "T82", "T7", "T10", "T20"]

    # Act
    p_at_5 = precision_at_k(gold=gold, ranked=ranking, k=5)
    p_at_10 = precision_at_k(gold=gold, ranked=ranking, k=10)
    p_empty = precision_at_k(gold=gold, ranked=[], k=5)

    # Assert
    assert p_at_5 == 2 / 5
    assert p_at_10 == 2 / 6
    assert p_empty == 0.0


def test_should_return_false_positives_when_extra_tables_are_predicted():
    # Arrange
    gold = {"T1", "T82"}
    predicted = {"T1", "T46", "T82", "T89"}

    # Act
    fp = false_positives(gold=gold, predicted=predicted)

    # Assert
    assert fp == {"T46", "T89"}


def test_should_detect_complete_recovery_when_all_gold_tables_are_in_top_k():
    # Arrange
    gold = {"T1", "T82"}
    ranking = ["T1", "T46", "T7", "T10", "T20", "T82"]

    # Act
    completo_en_5 = is_complete_recovery(gold=gold, ranked=ranking, k=5)
    completo_en_10 = is_complete_recovery(gold=gold, ranked=ranking, k=10)

    # Assert
    assert completo_en_5 is False
    assert completo_en_10 is True


def test_should_calculate_percentile_with_linear_interpolation_when_latencies_provided():
    # Arrange
    valores = [10.0, 20.0, 30.0, 40.0, 50.0]

    # Act
    p50 = calcular_percentil(valores, 50.0)
    p95 = calcular_percentil(valores, 95.0)
    vacio = calcular_percentil([], 50.0)

    # Assert
    assert p50 == 30.0
    assert p95 == pytest.approx(48.0)
    assert vacio == 0.0
    with pytest.raises(ValueError, match="entre 0 y 100"):
        calcular_percentil(valores, 105.0)
