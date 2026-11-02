"""
backend/evaluation/dataset_validator.py
─────────────────────────────────────────────────────────────────────────────
Validación de integridad de identificadores en gold_tables frente al esquema
maestro.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

from typing import Any


def validar_gold_tables(
    caso: dict[str, Any],
    esquema_maestro: dict[str, Any],
) -> list[str]:
    """
    Identifica qué tablas declaradas en gold_tables de un caso no existen en el
    esquema maestro cargado.

    Args:
        caso: Diccionario del caso con clave opcional 'gold_tables'.
        esquema_maestro: Diccionario del esquema maestro indexado por ID de tabla.

    Returns:
        Lista de identificadores de tablas inválidos (vacía si todas son válidas
        o si el caso no tiene gold_tables).
    """
    gold_tables = caso.get("gold_tables")

    if gold_tables is None:
        return []

    return [
        tabla
        for tabla in gold_tables
        if tabla not in esquema_maestro
    ]
