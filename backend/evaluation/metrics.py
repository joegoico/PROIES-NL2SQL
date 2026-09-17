def recall_at_k(
    gold: set[str],
    ranked: list[str],
    k: int,
) -> float:
    if not gold:
        return 1.0

    top_k = set(ranked[:k])

    encontrados = gold.intersection(top_k)

    return len(encontrados) / len(gold)