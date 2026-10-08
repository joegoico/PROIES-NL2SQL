from pathlib import Path

from backend.evaluation.dataset_loader import (
    cargar_dataset,
    obtener_casos_evaluables,
)
from backend.evaluation.prefilter_runner import (
    ejecutar_prefilter_benchmark,
)
from backend.evaluation.error_analysis import (
    calcular_estadisticas_por_tabla,
)
from backend.evaluation.reports.reports_generator import (
    construir_diagnosticos,
    generar_reporte_markdown,
    guardar_reporte_markdown,
)

from backend.custom.schema_prefilter import SchemaPrefilter
from backend.utils.schema_loader import cargar_esquema_maestro


def main():
    dataset = cargar_dataset(
        "backend/evaluation/dataset.json"
    )

    casos_dev = obtener_casos_evaluables(
        dataset=dataset,
        split="dev",
    )
    casos_por_id = {
        caso["id"]: caso
        for caso in casos_dev
    }

    esquema_maestro = cargar_esquema_maestro(
        schema_path=Path("data/master_schema.json"),
        fallback_path=Path("backend/master_schema.json"),
    )

    prefilter = SchemaPrefilter()

    resultado = ejecutar_prefilter_benchmark(
        casos=casos_dev,
        prefilter=prefilter,
        esquema_maestro=esquema_maestro,
    )
    casos_por_id = {
    caso["id"]: caso
    for caso in casos_dev
    }

    rankings = {}

    for caso in resultado["casos"]:
        if caso["recall_at_10"] < 1.0:
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

    ruta_reporte = Path(
        "backend/evaluation/reports/prefilter_benchmark.md"
    )

    guardar_reporte_markdown(
        contenido=contenido_reporte,
        ruta=ruta_reporte,
    )

    print()
    print(f"Reporte generado: {ruta_reporte}")

   


if __name__ == "__main__":
    main()