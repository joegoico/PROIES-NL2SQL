"""
backend/evaluation/reports/reports_generator.py
─────────────────────────────────────────────────────────────────────────────
Generador de diagnósticos y reportes en formato Markdown para el benchmark de
SchemaPrefilter.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

from pathlib import Path
from typing import Any


def generar_reporte_markdown(
    resultado: dict[str, Any],
    diagnosticos: list[dict[str, Any]],
) -> str:
    """
    Construye el reporte Markdown del benchmark de SchemaPrefilter incluyendo
    cobertura del dataset, Recall@k, Precision@k, Complete Recovery Rate,
    falsos positivos/negativos, latencia y detalle de errores por caso.

    Args:
        resultado: Diccionario retornado por ejecutar_prefilter_benchmark.
        diagnosticos: Lista de diagnósticos de casos con tablas gold faltantes.

    Returns:
        Cadena con el reporte formateado en Markdown.
    """
    lineas: list[str] = []

    lineas.append("# Benchmark Prefilter")
    lineas.append("")
    lineas.append("## Resumen")
    lineas.append("")

    if "top_k" in resultado:
        lineas.append(f"- Top-K configurado: {resultado['top_k']}")
    if "total_casos" in resultado:
        lineas.append(f"- Total casos dataset: {resultado['total_casos']}")

    lineas.append(f"- Casos evaluados: {len(resultado['casos'])}")

    if "casos_sin_gold" in resultado:
        lineas.append(f"- Casos sin gold_tables: {resultado['casos_sin_gold']}")
    if "ids_sin_gold" in resultado and resultado["ids_sin_gold"]:
        ids_texto = ", ".join(resultado["ids_sin_gold"])
        lineas.append(f"- IDs sin gold_tables: {ids_texto}")
    if "cobertura_dataset" in resultado:
        lineas.append(
            f"- Cobertura del dataset: {resultado['cobertura_dataset']:.4f}"
        )

    lineas.append(f"- Recall@5: {resultado['recall_at_5_promedio']:.4f}")
    lineas.append(f"- Recall@10: {resultado['recall_at_10_promedio']:.4f}")

    if "precision_at_5_promedio" in resultado:
        lineas.append(
            f"- Precision@5: {resultado['precision_at_5_promedio']:.4f}"
        )
    if "precision_at_10_promedio" in resultado:
        lineas.append(
            f"- Precision@10: {resultado['precision_at_10_promedio']:.4f}"
        )
    if "complete_recovery_rate_at_5" in resultado:
        lineas.append(
            f"- Complete Recovery Rate@5: {resultado['complete_recovery_rate_at_5']:.4f}"
        )
    if "complete_recovery_rate_at_10" in resultado:
        lineas.append(
            f"- Complete Recovery Rate@10: {resultado['complete_recovery_rate_at_10']:.4f}"
        )
    if "complete_recovery_rate" in resultado:
        lineas.append(
            f"- Complete Recovery Rate: {resultado['complete_recovery_rate']:.4f}"
        )
    if "false_positives_total" in resultado:
        lineas.append(
            f"- Falsos positivos totales: {resultado['false_positives_total']}"
        )
    if "false_negatives_total" in resultado:
        lineas.append(
            f"- Falsos negativos totales: {resultado['false_negatives_total']}"
        )
    if "latencia_p50_ms" in resultado:
        lineas.append(
            f"- Latencia p50 (ms): {resultado['latencia_p50_ms']:.2f}"
        )
    if "latencia_p95_ms" in resultado:
        lineas.append(
            f"- Latencia p95 (ms): {resultado['latencia_p95_ms']:.2f}"
        )

    lineas.append("")
    lineas.append("---")
    lineas.append("")
    lineas.append("## Errores por caso")
    lineas.append("")

    for diagnostico in diagnosticos:
        lineas.append(f"### Caso: {diagnostico['id']}")
        lineas.append("")
        lineas.append(f"**Pregunta:** {diagnostico['pregunta']}")
        lineas.append("")
        lineas.append("#### Gold no recuperadas")
        lineas.append("")
        lineas.append("| Tabla | Rank | Score |")
        lineas.append("|---|---:|---:|")

        for tabla in diagnostico["gold_no_recuperadas"]:
            rank = tabla["rank"] if tabla["rank"] is not None else "—"
            lineas.append(
                f"| {tabla['tabla']} | {rank} | {tabla['score']:.2f} |"
            )

        lineas.append("")

    return "\n".join(lineas)


def construir_diagnosticos(
    casos: list[dict[str, Any]],
    resultados: list[dict[str, Any]],
    rankings: dict[str, list[tuple[str, float]]],
) -> list[dict[str, Any]]:
    """
    Identifica para cada caso con recuperación incompleta cuáles tablas gold no
    fueron recuperadas, junto con su posición y puntaje en el ranking global.

    Args:
        casos: Lista de diccionarios de casos evaluados.
        resultados: Lista de diccionarios de resultados por caso.
        rankings: Diccionario que asocia cada ID de caso fallido con su ranking
            completo de pares (id_tabla, score).

    Returns:
        Lista de diagnósticos detallados para los casos con tablas gold faltantes.
    """
    casos_por_id = {caso["id"]: caso for caso in casos}
    diagnosticos: list[dict[str, Any]] = []

    for resultado in resultados:
        completo = resultado.get("complete_recovery")
        if completo is True or (
            completo is None and resultado.get("recall_at_10", 0.0) >= 1.0
        ):
            continue

        caso = casos_por_id[resultado["id"]]
        ranking = rankings.get(resultado["id"], [])

        posiciones = {
            indice: posicion
            for posicion, (indice, _) in enumerate(ranking, start=1)
        }
        scores = dict(ranking)

        gold_no_recuperadas = []
        for tabla in resultado["gold_tables"]:
            if tabla not in resultado["predicted_tables"]:
                gold_no_recuperadas.append(
                    {
                        "tabla": tabla,
                        "rank": posiciones.get(tabla),
                        "score": scores.get(tabla, 0.0),
                    }
                )

        diagnosticos.append(
            {
                "id": resultado["id"],
                "pregunta": caso["question"],
                "gold_no_recuperadas": gold_no_recuperadas,
            }
        )

    return diagnosticos


def guardar_reporte_markdown(
    contenido: str,
    ruta: Path,
) -> None:
    """
    Persiste en disco el contenido del reporte Markdown, creando los directorios
    padres si no existen.

    Args:
        contenido: Cadena de texto en formato Markdown.
        ruta: Objeto Path de destino del archivo.

    Returns:
        None
    """
    ruta.parent.mkdir(parents=True, exist_ok=True)
    ruta.write_text(contenido, encoding="utf-8")
