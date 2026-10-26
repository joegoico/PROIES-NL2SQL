"""
backend/evaluation/run_context_resolver_benchmark.py
─────────────────────────────────────────────────────────────────────────────
Punto de entrada CLI para ejecutar la evaluación del ContextResolver sobre
backend/evaluation/context_resolver_cases.json.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import Any

from backend.custom.context_resolver import ContextResolver
from backend.evaluation.context_resolver_evaluator import (
    SplitType,
    cargar_context_resolver_dataset,
    ejecutar_context_resolver_benchmark,
)
from backend.evaluation.reports.context_resolver_reports_generator import (
    generar_reporte_context_resolver_markdown,
    guardar_reporte_context_resolver_markdown,
)

DEFAULT_DATASET_PATH = Path("backend/evaluation/context_resolver_cases.json")
DEFAULT_REPORT_PATH = Path("backend/evaluation/reports/context_resolver_benchmark.md")


def main(
    split: SplitType = "all",
    dataset_path: str | Path = DEFAULT_DATASET_PATH,
    report_path: str | Path | None = None,
) -> dict[str, Any]:
    """
    Carga el dataset de evaluación, ejecuta el benchmark sobre el split elegido,
    imprime el reporte en consola y opcionalmente lo guarda en disco.

    Args:
        split: Subconjunto del dataset a evaluar ('development', 'holdout' o 'all').
        dataset_path: Ruta al archivo JSON de casos.
        report_path: Ruta opcional donde persistir el reporte Markdown generado.

    Returns:
        Diccionario con las métricas y resultados del benchmark ejecutado.
    """
    dataset = cargar_context_resolver_dataset(dataset_path)
    resolver = ContextResolver()

    resultado = ejecutar_context_resolver_benchmark(
        dataset=dataset,
        resolver=resolver,
        split=split,
    )

    reporte = generar_reporte_context_resolver_markdown(resultado)
    print(reporte)

    if report_path is not None:
        guardar_reporte_context_resolver_markdown(
            contenido=reporte,
            ruta=report_path,
        )

    return resultado


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Ejecuta el benchmark del ContextResolver sobre context_resolver_cases.json."
    )
    parser.add_argument(
        "--split",
        choices=["development", "holdout", "all"],
        default="all",
        help="Subconjunto del dataset a evaluar (default: all).",
    )
    parser.add_argument(
        "--dataset",
        default=str(DEFAULT_DATASET_PATH),
        help="Ruta al archivo JSON de casos.",
    )
    parser.add_argument(
        "--output",
        default=None,
        help="Ruta opcional para guardar el reporte Markdown.",
    )
    args = parser.parse_args()
    main(split=args.split, dataset_path=args.dataset, report_path=args.output)
