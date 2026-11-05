"""Script de ejecución del benchmark SchemaPrefilter sobre el dataset curado de 39 casos dev.

Calcula las métricas de recuperación (Recall@5/10, Precision@5/10, Complete Recovery@5/10),
totales de TP, FP, FN, promedios de tablas sobrantes/omitidas y latencias p50/p95,
generando reportes en Markdown y JSON sin sobrescribir los reportes históricos.
"""

from datetime import datetime, timezone
import json
from pathlib import Path
import time
from typing import Any

from backend.custom.schema_prefilter import SchemaPrefilter
from backend.evaluation.context_resolver_evaluator import _calcular_percentil
from backend.evaluation.dataset_loader import (
    cargar_dataset,
    obtener_casos_evaluables,
)
from backend.evaluation.metrics import recall_at_k
from backend.evaluation.prefilter_runner import (
    ejecutar_prefilter_benchmark,
)
from backend.evaluation.reports.reports_generator import (
    construir_diagnosticos,
    generar_reporte_markdown,
    guardar_reporte_markdown,
)
from backend.utils.schema_loader import cargar_esquema_maestro


def ejecutar_benchmark_completo(
    dataset_path: Path = Path("backend/evaluation/dataset.json"),
    schema_path: Path = Path("data/master_schema.json"),
    fallback_schema_path: Path = Path("backend/master_schema.json"),
    split: str = "dev",
    top_k: int = 10,
) -> dict[str, Any]:
    """Ejecuta el benchmark prefilter y recopila métricas completas de recuperación y latencia.

    Args:
        dataset_path: Ruta al archivo JSON del dataset.
        schema_path: Ruta principal al esquema maestro.
        fallback_schema_path: Ruta alternativa al esquema maestro.
        split: Subconjunto a evaluar (por defecto "dev").
        top_k: Número máximo de tablas a recuperar por caso.

    Returns:
        Diccionario con métricas agregadas, diagnósticos, resultados por caso y rutas generadas.
    """
    dataset = cargar_dataset(dataset_path)
    casos = obtener_casos_evaluables(dataset=dataset, split=split)

    if len(casos) != 39:
        raise ValueError(
            f"Se esperaban exactamente 39 casos evaluables en split '{split}', pero se obtuvieron {len(casos)}."
        )

    esquema_maestro = cargar_esquema_maestro(
        schema_path=schema_path,
        fallback_path=fallback_schema_path,
    )

    prefilter = SchemaPrefilter()

    # Ejecución estándar mediante el runner existente
    resultado_base = ejecutar_prefilter_benchmark(
        casos=casos,
        prefilter=prefilter,
        esquema_maestro=esquema_maestro,
    )

    casos_por_id = {caso["id"]: caso for caso in casos}
    rankings: dict[str, list[tuple[str, float]]] = {}
    latencias_ms: list[float] = []

    recalls_5: list[float] = []
    recalls_10: list[float] = []
    precisions_5: list[float] = []
    precisions_10: list[float] = []
    complete_rec_5 = 0
    complete_rec_10 = 0

    tp_total = 0
    fp_total = 0
    fn_total = 0

    for caso_res in resultado_base["casos"]:
        cid = caso_res["id"]
        pregunta = casos_por_id[cid]["question"]
        gold = set(casos_por_id[cid]["gold_tables"])

        t0 = time.perf_counter()
        ranking = prefilter.obtener_ranking(
            pregunta=pregunta,
            esquema_maestro=esquema_maestro,
        )
        t1 = time.perf_counter()
        latencias_ms.append((t1 - t0) * 1000.0)

        predicted_10 = [idx for idx, _ in ranking[:top_k]]
        predicted_5 = predicted_10[:5]

        if caso_res["recall_at_10"] < 1.0:
            rankings[cid] = ranking

        r5 = recall_at_k(gold=gold, ranked=predicted_5, k=5)
        r10 = recall_at_k(gold=gold, ranked=predicted_10, k=top_k)
        recalls_5.append(r5)
        recalls_10.append(r10)

        tp5 = len(gold.intersection(set(predicted_5)))
        p5 = tp5 / len(predicted_5) if predicted_5 else 0.0
        precisions_5.append(p5)
        if r5 == 1.0:
            complete_rec_5 += 1

        tp10 = len(gold.intersection(set(predicted_10)))
        fp10 = len(set(predicted_10) - gold)
        fn10 = len(gold - set(predicted_10))
        p10 = tp10 / len(predicted_10) if predicted_10 else 0.0
        precisions_10.append(p10)
        if r10 == 1.0:
            complete_rec_10 += 1

        tp_total += tp10
        fp_total += fp10
        fn_total += fn10

    n = len(casos)
    diagnosticos = construir_diagnosticos(
        casos=casos,
        resultados=resultado_base["casos"],
        rankings=rankings,
    )

    reporte_md_base = generar_reporte_markdown(
        resultado=resultado_base,
        diagnosticos=diagnosticos,
    )

    # Métricas agregadas
    fecha_utc = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M:%S UTC")
    metricas = {
        "fecha": fecha_utc,
        "split": split,
        "top_k": top_k,
        "casos_evaluables": n,
        "recall_at_5": sum(recalls_5) / n,
        "recall_at_10": sum(recalls_10) / n,
        "precision_at_5": sum(precisions_5) / n,
        "precision_at_10": sum(precisions_10) / n,
        "complete_recovery_at_5": complete_rec_5 / n,
        "complete_recovery_at_5_pct": (complete_rec_5 / n) * 100.0,
        "complete_recovery_at_10": complete_rec_10 / n,
        "complete_recovery_at_10_pct": (complete_rec_10 / n) * 100.0,
        "tp": tp_total,
        "fp": fp_total,
        "fn": fn_total,
        "promedio_sobrantes_por_caso": fp_total / n,
        "promedio_omitidas_por_caso": fn_total / n,
        "latencia_p50_ms": _calcular_percentil(latencias_ms, 50.0),
        "latencia_p95_ms": _calcular_percentil(latencias_ms, 95.0),
    }

    # Encabezado ampliado para el reporte Markdown de la nueva línea base
    encabezado = [
        "# Benchmark Prefilter — Nueva Línea Base (Dataset Curado)",
        "",
        "## Metadatos de la corrida",
        f"- **Fecha:** {fecha_utc}",
        f"- **Split:** {split}",
        f"- **Top K:** {top_k}",
        f"- **Casos evaluables:** {n}",
        "",
        "## Resumen de Métricas",
        f"- **Recall@5:** {metricas['recall_at_5']:.4f}",
        f"- **Recall@10:** {metricas['recall_at_10']:.4f}",
        f"- **Precision@5:** {metricas['precision_at_5']:.4f}",
        f"- **Precision@10:** {metricas['precision_at_10']:.4f}",
        f"- **Complete Recovery@5:** {metricas['complete_recovery_at_5_pct']:.2f}% ({complete_rec_5}/{n})",
        f"- **Complete Recovery@10:** {metricas['complete_recovery_at_10_pct']:.2f}% ({complete_rec_10}/{n})",
        f"- **True Positives (TP):** {tp_total}",
        f"- **False Positives (FP):** {fp_total}",
        f"- **False Negatives (FN):** {fn_total}",
        f"- **Promedio de tablas sobrantes por caso:** {metricas['promedio_sobrantes_por_caso']:.2f}",
        f"- **Promedio de tablas omitidas por caso:** {metricas['promedio_omitidas_por_caso']:.2f}",
        f"- **Latencia p50:** {metricas['latencia_p50_ms']:.2f} ms",
        f"- **Latencia p95:** {metricas['latencia_p95_ms']:.2f} ms",
        "",
        "---",
        "",
    ]

    # Extraer la sección de errores por caso del reporte base
    seccion_errores = reporte_md_base.split("---", 1)[-1] if "---" in reporte_md_base else ""
    reporte_md_final = "\n".join(encabezado) + seccion_errores.strip() + "\n"

    ruta_md = Path("backend/evaluation/reports/prefilter_benchmark_curated_dev39.md")
    guardar_reporte_markdown(contenido=reporte_md_final, ruta=ruta_md)

    ruta_json = Path("backend/evaluation/reports/prefilter_benchmark_curated_dev39.json")
    resumen_json = {
        "metadatos": {
            "fecha": fecha_utc,
            "split": split,
            "top_k": top_k,
            "casos_evaluables": n,
        },
        "metricas": metricas,
        "diagnosticos": diagnosticos,
    }
    ruta_json.parent.mkdir(parents=True, exist_ok=True)
    ruta_json.write_text(json.dumps(resumen_json, indent=2, ensure_ascii=False), encoding="utf-8")

    return {
        "metricas": metricas,
        "ruta_md": ruta_md,
        "ruta_json": ruta_json,
    }


def main() -> None:
    """Punto de entrada principal para ejecutar el benchmark sobre 39 casos dev curados."""
    resultado = ejecutar_benchmark_completo()
    m = resultado["metricas"]
    print("==================================================")
    print("BENCHMARK PREFILTER — NUEVA LÍNEA BASE (DEV 39)")
    print("==================================================")
    print(f"Casos evaluados:        {m['casos_evaluables']}")
    print(f"Recall@5:               {m['recall_at_5']:.4f}")
    print(f"Recall@10:              {m['recall_at_10']:.4f}")
    print(f"Precision@5:            {m['precision_at_5']:.4f}")
    print(f"Precision@10:           {m['precision_at_10']:.4f}")
    print(f"Complete Recovery@5:    {m['complete_recovery_at_5_pct']:.2f}%")
    print(f"Complete Recovery@10:   {m['complete_recovery_at_10_pct']:.2f}%")
    print(f"TP:                     {m['tp']}")
    print(f"FP:                     {m['fp']}")
    print(f"FN:                     {m['fn']}")
    print(f"Tablas sobrantes/caso:  {m['promedio_sobrantes_por_caso']:.2f}")
    print(f"Tablas omitidas/caso:   {m['promedio_omitidas_por_caso']:.2f}")
    print(f"Latencia p50:           {m['latencia_p50_ms']:.2f} ms")
    print(f"Latencia p95:           {m['latencia_p95_ms']:.2f} ms")
    print("--------------------------------------------------")
    print(f"Reporte Markdown:       {resultado['ruta_md']}")
    print(f"Reporte JSON:           {resultado['ruta_json']}")
    print("==================================================")


if __name__ == "__main__":
    main()
