from pathlib import Path

from backend.evaluation.dataset_loader import (
    cargar_dataset,
    obtener_casos_evaluables,
)
from backend.evaluation.prefilter_runner import (
    ejecutar_prefilter_benchmark,
)
from backend.evaluation.error_analysis import (
    contar_false_negatives_por_tabla,
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

    print(f"Casos evaluados: {len(resultado['casos'])}")

    print(
        f"Recall@5 promedio: "
        f"{resultado['recall_at_5_promedio']:.4f}"
    )

    print(
        f"Recall@10 promedio: "
        f"{resultado['recall_at_10_promedio']:.4f}"
    )

    # Errores por caso
    for caso in resultado["casos"]:
        if caso["recall_at_10"] < 1.0:
            print()
            print(f"ERROR: {caso['id']}")
            print(f"Gold: {caso['gold_tables']}")
            print(f"Predicted: {caso['predicted_tables']}")
            print(f"Recall@10: {caso['recall_at_10']}")

    # False negatives agregados por tabla
    conteo_fn = contar_false_negatives_por_tabla(
        resultado["casos"]
    )

    print()
    print("=== FALSE NEGATIVES POR TABLA ===")

    for tabla, cantidad in sorted(
        conteo_fn.items(),
        key=lambda item: item[1],
        reverse=True,
    ):
        print(f"{tabla}: {cantidad}")


if __name__ == "__main__":
    main()