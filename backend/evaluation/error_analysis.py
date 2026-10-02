from collections import Counter

from backend.evaluation.metrics import false_negatives


def calcular_recall_por_tabla(
    resultados: list[dict],
) -> dict[str, float]:
    apariciones_gold = Counter()
    recuperaciones = Counter()

    for caso in resultados:
        gold = set(caso["gold_tables"])
        predicted = set(caso["predicted_tables"])

        for tabla in gold:
            apariciones_gold[tabla] += 1

            if tabla in predicted:
                recuperaciones[tabla] += 1

    return {
        tabla: recuperaciones[tabla] / cantidad_gold
        for tabla, cantidad_gold in apariciones_gold.items()
    }

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


def calcular_estadisticas_por_tabla(
    resultados: list[dict],
) -> dict[str, dict]:
    apariciones_gold = Counter()
    recuperaciones = Counter()

    for caso in resultados:
        gold = set(caso["gold_tables"])
        predicted = set(caso["predicted_tables"])

        for tabla in gold:
            apariciones_gold[tabla] += 1

            if tabla in predicted:
                recuperaciones[tabla] += 1

    estadisticas = {}

    for tabla, gold_count in apariciones_gold.items():
        retrieved_count = recuperaciones[tabla]
        false_negative_count = gold_count - retrieved_count

        estadisticas[tabla] = {
            "gold_count": gold_count,
            "retrieved_count": retrieved_count,
            "false_negative_count": false_negative_count,
            "recall": retrieved_count / gold_count,
        }

    return estadisticas