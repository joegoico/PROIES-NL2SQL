import json
import logging
from pathlib import Path

logger = logging.getLogger(__name__)


def cargar_esquema_maestro(
    schema_path: Path,
    fallback_path: Path | None = None,
) -> dict:
    if (
        not schema_path.exists()
        and fallback_path is not None
        and fallback_path.exists()
    ):
        schema_path = fallback_path

    if not schema_path.exists():
        logger.warning(
            "master_schema.json no encontrado en %s",
            schema_path,
        )
        return {}

    try:
        with open(schema_path, encoding="utf-8") as archivo:
            esquema = json.load(archivo)

        logger.info(
            "Esquema maestro cargado — %d tablas desde %s",
            len(esquema),
            schema_path,
        )

        return esquema

    except (json.JSONDecodeError, OSError) as error:
        logger.error(
            "Error cargando master_schema.json: %s",
            error,
        )
        return {}