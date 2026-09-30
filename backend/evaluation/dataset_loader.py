import json
from pathlib import Path


def cargar_dataset(path: str | Path) -> list[dict]:
    with open(path, "r", encoding="utf-8") as archivo:
        return json.load(archivo)


def tiene_gold(caso: dict) -> bool:
    return caso.get("gold_tables") is not None


def obtener_casos_evaluables(
    dataset: list[dict],
    split: str,
) -> list[dict]:
    return [
        caso
        for caso in dataset
        if caso.get("split") == split
        and tiene_gold(caso)
    ]