from backend.evaluation.dataset_validator import validar_gold_tables
from backend.evaluation.prefilter_evaluator import evaluar_caso_prefilter


def ejecutar_prefilter_benchmark(
    casos: list[dict],
    prefilter,
    esquema_maestro: dict,
) -> dict:
    if not casos:
        raise ValueError("No hay casos evaluables")
    for caso in casos:
        tablas_invalidas = validar_gold_tables(
            caso=caso,
            esquema_maestro=esquema_maestro,
        )

        if tablas_invalidas:
            raise ValueError(
                f"Gold tables inválidas en {caso['id']}: "
                f"{tablas_invalidas}"
            )
    resultados = [
        evaluar_caso_prefilter(
            caso=caso,
            prefilter=prefilter,
            esquema_maestro=esquema_maestro,
        )
        for caso in casos
    ]

    recall_at_5_promedio = (
        sum(caso["recall_at_5"] for caso in resultados) / len(resultados)
    )

    recall_at_10_promedio = (
        sum(caso["recall_at_10"] for caso in resultados) / len(resultados)
    )

    return {
        "recall_at_5_promedio": recall_at_5_promedio,
        "recall_at_10_promedio": recall_at_10_promedio,
        "casos": resultados,
    }