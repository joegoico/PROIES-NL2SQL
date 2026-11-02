"""
backend/evaluation/metrics.py
─────────────────────────────────────────────────────────────────────────────
Métricas de evaluación para recuperación y selección de tablas en SchemaPrefilter.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import math


def recall_at_k(
    gold: set[str],
    ranked: list[str],
    k: int,
) -> float:
    """
    Calcula la proporción de tablas gold presentes dentro de las primeras k
    tablas del ranking predicho.

    Args:
        gold: Conjunto de identificadores de tablas esperadas (gold_tables).
        ranked: Lista ordenada de identificadores de tablas seleccionadas.
        k: Límite superior de corte en el ranking.

    Returns:
        Valor en [0.0, 1.0] con la fracción de tablas gold recuperadas. Si gold
        está vacío, retorna 1.0.
    """
    if not gold:
        return 1.0
    if k <= 0:
        return 0.0

    top_k = set(ranked[:k])
    encontrados = gold.intersection(top_k)
    return len(encontrados) / len(gold)


def precision_at_k(
    gold: set[str],
    ranked: list[str],
    k: int,
) -> float:
    """
    Calcula la precisión de selección entre las primeras k tablas predichas,
    definida como TP / (TP + FP) sobre el subconjunto efectivamente seleccionado
    hasta el corte k.

    Args:
        gold: Conjunto de identificadores de tablas esperadas (gold_tables).
        ranked: Lista ordenada de identificadores de tablas seleccionadas.
        k: Límite superior de corte en el ranking.

    Returns:
        Proporción en [0.0, 1.0] de tablas seleccionadas en top-k que pertenecen
        a gold. Retorna 0.0 si no se seleccionaron tablas o k <= 0.
    """
    if k <= 0:
        return 0.0

    seleccionadas = list(dict.fromkeys(ranked[:k]))
    if not seleccionadas:
        return 1.0 if not gold else 0.0

    encontrados = gold.intersection(seleccionadas)
    return len(encontrados) / len(seleccionadas)


def is_complete_recovery(
    gold: set[str],
    ranked: list[str],
    k: int | None = None,
) -> bool:
    """
    Determina si se recuperaron absolutamente todas las tablas gold requeridas
    dentro del corte k (recuperación completa todo-o-nada).

    Args:
        gold: Conjunto de identificadores de tablas esperadas (gold_tables).
        ranked: Lista ordenada de identificadores de tablas seleccionadas.
        k: Límite opcional de corte en el ranking. Si es None, evalúa toda la lista.

    Returns:
        True si gold es subconjunto de las tablas seleccionadas hasta k; False en
        caso contrario.
    """
    if not gold:
        return True
    if k is not None and k <= 0:
        return False

    corte = ranked[:k] if k is not None else ranked
    return gold.issubset(set(corte))


def false_negatives(
    gold: set[str],
    predicted: set[str],
) -> set[str]:
    """
    Obtiene el conjunto de tablas gold que no fueron recuperadas en la selección.

    Args:
        gold: Conjunto de identificadores de tablas esperadas.
        predicted: Conjunto de identificadores de tablas predichas.

    Returns:
        Conjunto de identificadores en gold ausentes en predicted.
    """
    return gold - predicted


def false_positives(
    gold: set[str],
    predicted: set[str],
) -> set[str]:
    """
    Obtiene el conjunto de tablas seleccionadas innecesariamente que no pertenecen
    a las tablas gold del caso.

    Args:
        gold: Conjunto de identificadores de tablas esperadas.
        predicted: Conjunto de identificadores de tablas predichas.

    Returns:
        Conjunto de identificadores en predicted ausentes en gold.
    """
    return predicted - gold


def calcular_percentil(valores: list[float], percentil: float) -> float:
    """
    Calcula el percentil indicado mediante interpolación lineal sobre una lista
    de mediciones numéricas (ej. latencias en milisegundos).

    Args:
        valores: Lista de valores numéricos observados.
        percentil: Percentil buscado en el rango [0.0, 100.0].

    Returns:
        Valor del percentil interpolado, o 0.0 si la lista está vacía.

    Raises:
        ValueError: Si el percentil se encuentra fuera del rango [0.0, 100.0].
    """
    if not valores:
        return 0.0
    if not 0.0 <= percentil <= 100.0:
        raise ValueError("El percentil debe estar entre 0 y 100.")

    ordenados = sorted(valores)
    n = len(ordenados)
    if n == 1:
        return ordenados[0]

    # Interpolación lineal estándar entre los índices adyacentes
    posicion = (percentil / 100.0) * (n - 1)
    indice_inferior = math.floor(posicion)
    indice_superior = math.ceil(posicion)
    if indice_inferior == indice_superior:
        return ordenados[indice_inferior]

    peso = posicion - indice_inferior
    return (
        ordenados[indice_inferior] * (1.0 - peso)
        + ordenados[indice_superior] * peso
    )
