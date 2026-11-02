"""
backend/evaluation/dataset_loader.py
─────────────────────────────────────────────────────────────────────────────
Funciones de carga, filtrado de casos evaluables y cálculo de cobertura sobre
el dataset de evaluación de SchemaPrefilter.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import json
from pathlib import Path
from typing import Any


def cargar_dataset(path: str | Path) -> list[dict[str, Any]]:
    """
    Carga el dataset de evaluación desde un archivo JSON en disco.

    Args:
        path: Ruta al archivo JSON que contiene la lista de casos.

    Returns:
        Lista de diccionarios representando los casos del dataset.
    """
    with open(path, "r", encoding="utf-8") as archivo:
        return json.load(archivo)


def tiene_gold(caso: dict[str, Any]) -> bool:
    """
    Verifica si un caso cuenta con etiquetas gold_tables definidas.

    Args:
        caso: Diccionario del caso a inspeccionar.

    Returns:
        True si 'gold_tables' existe y no es None; False en caso contrario.
    """
    return caso.get("gold_tables") is not None


def obtener_casos_evaluables(
    dataset: list[dict[str, Any]],
    split: str,
) -> list[dict[str, Any]]:
    """
    Filtra los casos pertenecientes al split indicado que cuentan con
    gold_tables definidas.

    Args:
        dataset: Lista completa de casos cargados.
        split: Nombre de la partición a filtrar (ej. 'dev').

    Returns:
        Lista de casos evaluables para el split solicitado.
    """
    return [
        caso
        for caso in dataset
        if caso.get("split") == split and tiene_gold(caso)
    ]


def calcular_cobertura_dataset(
    dataset: list[dict[str, Any]],
    split: str | None = "dev",
) -> dict[str, Any]:
    """
    Calcula las métricas de cobertura del dataset distinguiendo entre el total
    de casos del split, los casos evaluables (con gold_tables) y los casos sin
    etiquetar, identificando estos últimos por su ID sin confundirlos con falsos
    negativos.

    Args:
        dataset: Lista de casos del dataset.
        split: Partición sobre la cual calcular la cobertura (ej. 'dev'). Si es
            None o 'all', considera todos los elementos de la lista recibida.

    Returns:
        Diccionario con 'total_casos', 'casos_evaluables', 'casos_sin_gold',
        'ids_sin_gold' y 'cobertura_dataset'.
    """
    if split is None or split == "all":
        casos_split = list(dataset)
    else:
        casos_split = [
            caso for caso in dataset if caso.get("split", split) == split
        ]

    total_casos = len(casos_split)
    evaluables = [caso for caso in casos_split if tiene_gold(caso)]
    sin_gold = [caso for caso in casos_split if not tiene_gold(caso)]
    ids_sin_gold = [str(caso.get("id", "")) for caso in sin_gold]

    cobertura = len(evaluables) / total_casos if total_casos > 0 else 0.0

    return {
        "total_casos": total_casos,
        "casos_evaluables": len(evaluables),
        "casos_sin_gold": len(sin_gold),
        "ids_sin_gold": ids_sin_gold,
        "cobertura_dataset": cobertura,
    }
