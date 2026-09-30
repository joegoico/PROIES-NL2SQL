from collections import Counter

from backend.evaluation.metrics import false_negatives


def contar_false_negatives_por_tabla(
    resultados: list[dict],
) -> dict[str, int]:
    contador = Counter()

    for caso in resultados:
        fn = false_negatives(
            gold=set(caso["gold_tables"]),
            predicted=set(caso["predicted_tables"]),
        )

        contador.update(fn)

    return dict(contador)