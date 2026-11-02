"""
backend/evaluation/run_prefilter_benchmark.py
─────────────────────────────────────────────────────────────────────────────
Punto de entrada CLI para ejecutar el benchmark de evaluación de
SchemaPrefilter sobre backend/evaluation/dataset.json.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import Any

from backend.custom.schema_prefilter import SchemaPrefilter
from backend.evaluation.dataset_loader import (
    cargar_dataset,
    obtener_casos_evaluables,
)
from backend.evaluation.prefilter_runner import ejecutar_prefilter_benchmark
from backend.evaluation.reports.reports_generator import (
    construir_diagnosticos,
    generar_reporte_markdown,
    guardar_reporte_markdown,
)
from backend.utils.schema_loader import cargar_esquema_maestro


def main(
    top_k: int = 10,
    split: str = "dev",
) -> dict[str, Any]:
    """
    Carga el dataset y el esquema maestro, ejecuta el benchmark de
    SchemaPrefilter con el corte top_k configurado y genera el reporte Markdown
    con métricas de recuperación, precisión, cobertura y latencia.

    Args:
        top_k: Cantidad máxima de tablas a seleccionar por pregunta (por defecto 10).
        split: Partición del dataset a evaluar (por defecto 'dev').

    Returns:
        Diccionario con todas las métricas y resultados por caso del benchmark.
    """
    dataset = cargar_dataset("backend/evaluation/dataset.json")

    casos_dev = obtener_casos_evaluables(
        dataset=dataset,
        split=split,
    )
    casos_por_id = {caso["id"]: caso for caso in casos_dev}

    esquema_maestro = cargar_esquema_maestro(
        schema_path=Path("data/master_schema.json"),
        fallback_path=Path("backend/master_schema.json"),
    )

    prefilter = SchemaPrefilter()

    resultado = ejecutar_prefilter_benchmark(
        casos=casos_dev,
        prefilter=prefilter,
        esquema_maestro=esquema_maestro,
        top_k=top_k,
        dataset_completo=dataset,
        split=split,
    )

    rankings = {}
    for caso in resultado["casos"]:
        if not caso.get("complete_recovery", caso["recall_at_10"] >= 1.0):
            pregunta = casos_por_id[caso["id"]]["question"]
            rankings[caso["id"]] = prefilter.obtener_ranking(
                pregunta=pregunta,
                esquema_maestro=esquema_maestro,
            )

    diagnosticos = construir_diagnosticos(
        casos=casos_dev,
        resultados=resultado["casos"],
        rankings=rankings,
    )

    contenido_reporte = generar_reporte_markdown(
        resultado=resultado,
        diagnosticos=diagnosticos,
    )

    ruta_reporte = Path("backend/evaluation/reports/prefilter_benchmark.md")
    guardar_reporte_markdown(
        contenido=contenido_reporte,
        ruta=ruta_reporte,
    )

    print()
    print(f"Reporte generado: {ruta_reporte}")
    return resultado


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Ejecuta el benchmark de SchemaPrefilter."
    )
    parser.add_argument(
        "--top-k",
        type=int,
        default=10,
        help="Cantidad máxima de tablas a seleccionar (default: 10).",
    )
    parser.add_argument(
        "--split",
        default="dev",
        help="Partición del dataset a evaluar (default: dev).",
    )
    args = parser.parse_args()
    main(top_k=args.top_k, split=args.split)
