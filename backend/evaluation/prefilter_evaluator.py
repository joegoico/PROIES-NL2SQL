from backend.evaluation.metrics import recall_at_k


def evaluar_caso_prefilter(
    caso: dict,
    prefilter,
    esquema_maestro: dict,
) -> dict:
    gold_tables = caso["gold_tables"]

    predicted_tables = prefilter.obtener_indices(
        pregunta=caso["question"],
        esquema_maestro=esquema_maestro,
        top_k=10,
    )

    return {
        "id": caso["id"],
        "gold_tables": gold_tables,
        "predicted_tables": predicted_tables,
        "recall_at_5": recall_at_k(
            gold=set(gold_tables),
            ranked=predicted_tables,
            k=5,
        ),
        "recall_at_10": recall_at_k(
            gold=set(gold_tables),
            ranked=predicted_tables,
            k=10,
        ),
    }