from pathlib import Path

def generar_reporte_markdown(
    resultado: dict,
    diagnosticos: list[dict],
) -> str:
    lineas = []

    lineas.append("# Benchmark Prefilter")
    lineas.append("")
    lineas.append("## Resumen")
    lineas.append("")

    lineas.append(
        f"- Casos evaluados: {len(resultado['casos'])}"
    )
    lineas.append(
        f"- Recall@5: {resultado['recall_at_5_promedio']:.4f}"
    )
    lineas.append(
        f"- Recall@10: {resultado['recall_at_10_promedio']:.4f}"
    )

    lineas.append("")
    lineas.append("---")
    lineas.append("")
    lineas.append("## Errores por caso")
    lineas.append("")

    for diagnostico in diagnosticos:
        lineas.append(
            f"### Caso: {diagnostico['id']}"
        )
        lineas.append("")

        lineas.append(
            f"**Pregunta:** {diagnostico['pregunta']}"
        )
        lineas.append("")

        lineas.append("#### Gold no recuperadas")
        lineas.append("")

        lineas.append("| Tabla | Rank | Score |")
        lineas.append("|---|---:|---:|")

        for tabla in diagnostico["gold_no_recuperadas"]:
            rank = (
                tabla["rank"]
                if tabla["rank"] is not None
                else "—"
            )

            lineas.append(
                f"| {tabla['tabla']} "
                f"| {rank} "
                f"| {tabla['score']:.2f} |"
            )

        lineas.append("")

    return "\n".join(lineas)

def construir_diagnosticos(
    casos: list[dict],
    resultados: list[dict],
    rankings: dict[str, list[tuple[str, float]]],
) -> list[dict]:
    casos_por_id = {
        caso["id"]: caso
        for caso in casos
    }

    diagnosticos = []

    for resultado in resultados:
        if resultado["recall_at_10"] >= 1.0:
            continue

        caso = casos_por_id[resultado["id"]]

        ranking = rankings[resultado["id"]]

        posiciones = {
            indice: posicion
            for posicion, (indice, _) in enumerate(
                ranking,
                start=1,
            )
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
    ruta.parent.mkdir(
        parents=True,
        exist_ok=True,
    )

    ruta.write_text(
        contenido,
        encoding="utf-8",
    )