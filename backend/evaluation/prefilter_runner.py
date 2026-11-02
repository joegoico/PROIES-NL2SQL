"""
backend/evaluation/prefilter_runner.py
─────────────────────────────────────────────────────────────────────────────
Orquestador del benchmark de SchemaPrefilter sobre un conjunto de casos,
calculando métricas agregadas de recuperación, precisión, cobertura y latencia.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

from typing import Any

from backend.evaluation.dataset_loader import (
    calcular_cobertura_dataset,
    tiene_gold,
)
from backend.evaluation.dataset_validator import validar_gold_tables
from backend.evaluation.error_analysis import (
    contar_false_negatives_por_tabla,
    contar_false_positives_por_tabla,
)
from backend.evaluation.metrics import calcular_percentil
from backend.evaluation.prefilter_evaluator import evaluar_caso_prefilter


def ejecutar_prefilter_benchmark(
    casos: list[dict[str, Any]],
    prefilter: Any,
    esquema_maestro: dict[str, Any],
    top_k: int = 10,
    dataset_completo: list[dict[str, Any]] | None = None,
    split: str | None = None,
) -> dict[str, Any]:
    """
    Ejecuta la evaluación de SchemaPrefilter sobre los casos evaluables y
    consolida métricas agregadas de Recall@k, Precision@k, Complete Recovery
    Rate, falsos positivos/negativos, latencias percentiles y cobertura del
    dataset. Los casos sin gold_tables son reportados en la cobertura sin ser
    contabilizados como falsos negativos.

    Args:
        casos: Lista de casos a evaluar (puede incluir o no casos sin gold_tables).
        prefilter: Instancia de SchemaPrefilter bajo prueba.
        esquema_maestro: Diccionario del esquema maestro de tablas.
        top_k: Límite superior de tablas a solicitar al prefiltro (por defecto 10).
        dataset_completo: Lista opcional con todos los casos del dataset para
            calcular la cobertura global del split cuando 'casos' ya viene prefiltrado.
        split: Nombre opcional de la partición para el cálculo de cobertura.

    Returns:
        Diccionario con las métricas agregadas, estadísticas de cobertura y el
        detalle por caso evaluado bajo la clave 'casos'.

    Raises:
        ValueError: Si no existen casos evaluables, si top_k <= 0 o si alguna
            gold_table no existe en esquema_maestro.
    """
    if top_k <= 0:
        raise ValueError("El parámetro top_k debe ser mayor a 0.")

    fuente_cobertura = dataset_completo if dataset_completo is not None else casos
    split_cobertura = (
        split
        if split is not None
        else ("dev" if dataset_completo is not None else None)
    )
    cobertura = calcular_cobertura_dataset(
        dataset=fuente_cobertura,
        split=split_cobertura,
    )

    casos_evaluables = [caso for caso in casos if tiene_gold(caso)]
    if not casos_evaluables:
        raise ValueError("No hay casos evaluables")

    for caso in casos_evaluables:
        tablas_invalidas = validar_gold_tables(
            caso=caso,
            esquema_maestro=esquema_maestro,
        )
        if tablas_invalidas:
            raise ValueError(
                f"Gold tables inválidas en {caso['id']}: {tablas_invalidas}"
            )

    resultados = [
        evaluar_caso_prefilter(
            caso=caso,
            prefilter=prefilter,
            esquema_maestro=esquema_maestro,
            top_k=top_k,
        )
        for caso in casos_evaluables
    ]

    total_evaluados = len(resultados)

    recall_at_5_promedio = (
        sum(caso["recall_at_5"] for caso in resultados) / total_evaluados
    )
    recall_at_10_promedio = (
        sum(caso["recall_at_10"] for caso in resultados) / total_evaluados
    )
    recall_at_k_promedio = (
        sum(caso["recall_at_k"] for caso in resultados) / total_evaluados
    )

    precision_at_5_promedio = (
        sum(caso["precision_at_5"] for caso in resultados) / total_evaluados
    )
    precision_at_10_promedio = (
        sum(caso["precision_at_10"] for caso in resultados) / total_evaluados
    )
    precision_at_k_promedio = (
        sum(caso["precision_at_k"] for caso in resultados) / total_evaluados
    )

    complete_recovery_count_5 = sum(
        1 for caso in resultados if caso["complete_recovery_at_5"]
    )
    complete_recovery_count_10 = sum(
        1 for caso in resultados if caso["complete_recovery_at_10"]
    )
    complete_recovery_count = sum(
        1 for caso in resultados if caso["complete_recovery"]
    )

    complete_recovery_rate_at_5 = complete_recovery_count_5 / total_evaluados
    complete_recovery_rate_at_10 = complete_recovery_count_10 / total_evaluados
    complete_recovery_rate = complete_recovery_count / total_evaluados

    false_positives_total = sum(
        caso["false_positives_count"] for caso in resultados
    )
    false_negatives_total = sum(
        caso["false_negatives_count"] for caso in resultados
    )
    false_positives_promedio = false_positives_total / total_evaluados
    false_negatives_promedio = false_negatives_total / total_evaluados

    latencias = [caso["latencia_ms"] for caso in resultados]
    latencia_p50_ms = calcular_percentil(latencias, 50.0)
    latencia_p95_ms = calcular_percentil(latencias, 95.0)

    return {
        "top_k": top_k,
        **cobertura,
        "recall_at_5_promedio": recall_at_5_promedio,
        "recall_at_10_promedio": recall_at_10_promedio,
        "recall_at_k_promedio": recall_at_k_promedio,
        "precision_at_5_promedio": precision_at_5_promedio,
        "precision_at_10_promedio": precision_at_10_promedio,
        "precision_at_k_promedio": precision_at_k_promedio,
        "complete_recovery_count_at_5": complete_recovery_count_5,
        "complete_recovery_count_at_10": complete_recovery_count_10,
        "complete_recovery_count": complete_recovery_count,
        "complete_recovery_rate_at_5": complete_recovery_rate_at_5,
        "complete_recovery_rate_at_10": complete_recovery_rate_at_10,
        "complete_recovery_rate": complete_recovery_rate,
        "false_positives_total": false_positives_total,
        "false_negatives_total": false_negatives_total,
        "false_positives_promedio": false_positives_promedio,
        "false_negatives_promedio": false_negatives_promedio,
        "false_positives_por_tabla": contar_false_positives_por_tabla(resultados),
        "false_negatives_por_tabla": contar_false_negatives_por_tabla(resultados),
        "latencia_p50_ms": latencia_p50_ms,
        "latencia_p95_ms": latencia_p95_ms,
        "casos": resultados,
    }
