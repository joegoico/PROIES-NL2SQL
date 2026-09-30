def validar_gold_tables(
    caso: dict,
    esquema_maestro: dict,
) -> list[str]:
    gold_tables = caso.get("gold_tables")

    if gold_tables is None:
        return []

    return [
        tabla
        for tabla in gold_tables
        if tabla not in esquema_maestro
    ]