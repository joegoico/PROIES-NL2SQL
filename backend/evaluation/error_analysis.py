"""
backend/evaluation/error_analysis.py
─────────────────────────────────────────────────────────────────────────────
Funciones de análisis de errores por tabla (recall, falsos negativos y falsos
positivos) sobre los resultados de evaluación de SchemaPrefilter.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

from collections import Counter
from typing import Any

from backend.evaluation.metrics import false_negatives, false_positives


def calcular_recall_por_tabla(
    resultados: list[dict[str, Any]],
) -> dict[str, float]:
    """
    Calcula la tasa de recuperación (recall) individual para cada tabla que
    aparece como gold en los casos evaluados.

    Args:
        resultados: Lista de diccionarios de resultados por caso con 'gold_tables'
            y 'predicted_tables'.

    Returns:
        Diccionario mapeando cada ID de tabla gold a su recall en [0.0, 1.0].
    """
    apariciones_gold: Counter[str] = Counter()
    recuperaciones: Counter[str] = Counter()

    for caso in resultados:
        gold = set(caso["gold_tables"])
        predicted = set(caso["predicted_tables"])

        for tabla in gold:
            apariciones_gold[tabla] += 1

            if tabla in predicted:
                recuperaciones[tabla] += 1

    return {
        tabla: recuperaciones[tabla] / cantidad_gold
        for tabla, cantidad_gold in apariciones_gold.items()
    }


def contar_false_negatives_por_tabla(
    resultados: list[dict[str, Any]],
) -> dict[str, int]:
    """
    Cuenta cuántas veces cada tabla gold fue omitida (falso negativo) a lo
    largo de los casos evaluados.

    Args:
        resultados: Lista de resultados por caso evaluado.

    Returns:
        Diccionario mapeando cada ID de tabla gold omitida a su cantidad de
        omisiones.
    """
    contador: Counter[str] = Counter()

    for caso in resultados:
        fn = false_negatives(
            gold=set(caso["gold_tables"]),
            predicted=set(caso["predicted_tables"]),
        )
        contador.update(fn)

    return dict(contador)


def contar_false_positives_por_tabla(
    resultados: list[dict[str, Any]],
) -> dict[str, int]:
    """
    Cuenta cuántas veces cada tabla fue seleccionada innecesariamente (falso
    positivo) sin pertenecer a las gold_tables del caso.

    Args:
        resultados: Lista de resultados por caso evaluado.

    Returns:
        Diccionario mapeando cada ID de tabla seleccionada innecesariamente a su
        frecuencia de aparición como falso positivo.
    """
    contador: Counter[str] = Counter()

    for caso in resultados:
        fp = false_positives(
            gold=set(caso["gold_tables"]),
            predicted=set(caso["predicted_tables"]),
        )
        contador.update(fp)

    return dict(contador)


def calcular_estadisticas_por_tabla(
    resultados: list[dict[str, Any]],
) -> dict[str, dict[str, Any]]:
    """
    Construye un resumen estadístico por cada tabla gold con la cantidad de
    apariciones esperadas, recuperaciones exitosas, falsos negativos y recall.

    Args:
        resultados: Lista de resultados por caso evaluado.

    Returns:
        Diccionario por ID de tabla gold con 'gold_count', 'retrieved_count',
        'false_negative_count' y 'recall'.
    """
    apariciones_gold: Counter[str] = Counter()
    recuperaciones: Counter[str] = Counter()

    for caso in resultados:
        gold = set(caso["gold_tables"])
        predicted = set(caso["predicted_tables"])

        for tabla in gold:
            apariciones_gold[tabla] += 1

            if tabla in predicted:
                recuperaciones[tabla] += 1

    estadisticas: dict[str, dict[str, Any]] = {}

    for tabla, gold_count in apariciones_gold.items():
        retrieved_count = recuperaciones[tabla]
        false_negative_count = gold_count - retrieved_count

        estadisticas[tabla] = {
            "gold_count": gold_count,
            "retrieved_count": retrieved_count,
            "false_negative_count": false_negative_count,
            "recall": retrieved_count / gold_count,
        }

    return estadisticas
