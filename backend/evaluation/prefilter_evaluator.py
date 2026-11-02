"""
backend/evaluation/prefilter_evaluator.py
─────────────────────────────────────────────────────────────────────────────
Evaluación individual por caso para SchemaPrefilter, calculando Recall@k,
Precision@k, Complete Recovery, falsos positivos/negativos y latencia.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import time
from typing import Any

from backend.evaluation.metrics import (
    false_negatives,
    false_positives,
    is_complete_recovery,
    precision_at_k,
    recall_at_k,
)


def evaluar_caso_prefilter(
    caso: dict[str, Any],
    prefilter: Any,
    esquema_maestro: dict[str, Any],
    top_k: int = 10,
) -> dict[str, Any]:
    """
    Evalúa el desempeño de SchemaPrefilter sobre un caso individual con
    gold_tables definidas, midiendo recall, precisión, recuperación completa,
    falsos positivos, falsos negativos y tiempo de ejecución.

    Args:
        caso: Diccionario con 'id', 'question' y 'gold_tables'.
        prefilter: Instancia de SchemaPrefilter (o compatible con obtener_indices).
        esquema_maestro: Diccionario del esquema maestro de tablas.
        top_k: Cantidad máxima de tablas a solicitar al prefiltro (por defecto 10).

    Returns:
        Diccionario con las tablas predichas, métricas en cortes 5, 10 y top_k,
        listas y conteos de falsos positivos/negativos y latencia en milisegundos.

    Raises:
        ValueError: Si top_k <= 0 o si el caso carece de gold_tables válidas.
    """
    if top_k <= 0:
        raise ValueError("El parámetro top_k debe ser mayor a 0.")

    gold_tables = caso.get("gold_tables")
    if gold_tables is None:
        raise ValueError(
            f"El caso '{caso.get('id')}' no posee gold_tables para evaluar."
        )

    inicio = time.perf_counter()
    predicted_tables = prefilter.obtener_indices(
        pregunta=caso["question"],
        esquema_maestro=esquema_maestro,
        top_k=top_k,
    )
    latencia_ms = (time.perf_counter() - inicio) * 1000.0

    gold_set = set(gold_tables)
    predicted_set = set(predicted_tables)

    fp_set = false_positives(gold=gold_set, predicted=predicted_set)
    fn_set = false_negatives(gold=gold_set, predicted=predicted_set)

    # Preservar el orden original para determinismo y serialización JSON
    fp_list = [tabla for tabla in predicted_tables if tabla in fp_set]
    fn_list = [tabla for tabla in gold_tables if tabla in fn_set]

    return {
        "id": caso["id"],
        "top_k": top_k,
        "gold_tables": gold_tables,
        "predicted_tables": predicted_tables,
        "recall_at_5": recall_at_k(
            gold=gold_set,
            ranked=predicted_tables,
            k=5,
        ),
        "recall_at_10": recall_at_k(
            gold=gold_set,
            ranked=predicted_tables,
            k=10,
        ),
        "recall_at_k": recall_at_k(
            gold=gold_set,
            ranked=predicted_tables,
            k=top_k,
        ),
        "precision_at_5": precision_at_k(
            gold=gold_set,
            ranked=predicted_tables,
            k=5,
        ),
        "precision_at_10": precision_at_k(
            gold=gold_set,
            ranked=predicted_tables,
            k=10,
        ),
        "precision_at_k": precision_at_k(
            gold=gold_set,
            ranked=predicted_tables,
            k=top_k,
        ),
        "complete_recovery_at_5": is_complete_recovery(
            gold=gold_set,
            ranked=predicted_tables,
            k=5,
        ),
        "complete_recovery_at_10": is_complete_recovery(
            gold=gold_set,
            ranked=predicted_tables,
            k=10,
        ),
        "complete_recovery": is_complete_recovery(
            gold=gold_set,
            ranked=predicted_tables,
            k=top_k,
        ),
        "false_positives": fp_list,
        "false_negatives": fn_list,
        "false_positives_count": len(fp_list),
        "false_negatives_count": len(fn_list),
        "latencia_ms": latencia_ms,
    }
