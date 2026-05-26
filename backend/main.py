"""
backend/main.py
─────────────────────────────────────────────────────────────────────────────
Punto de entrada de la aplicación FastAPI

Lifespan: gestiona el ciclo de vida completo en este orden:
  1. init_schema()          — crea tablas en Postgres si no existen
  2. cargar_esquema()       — carga master_schema.json → app.state.esquema_maestro
  3. init_models()          — inicializa SLMRouter y LLMGenerator → app.state

El orden importa: los modelos de IA se inicializan DESPUÉS del esquema
porque algunos tests y scripts validan que el esquema esté disponible
antes de hacer cualquier consulta.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import json
import logging
import os
from contextlib import asynccontextmanager
from pathlib import Path

from fastapi import FastAPI

from backend.controllers import nl2sql_controller
from backend.engine import init_models, teardown_models

logger = logging.getLogger(__name__)

# Ruta al archivo de esquema maestro. Debe coincidir con donde init_schema()
# escribe el JSON; en Docker se configura con SCHEMA_MAP_PATH.
_PROJECT_ROOT = Path(__file__).resolve().parents[1]
_SCHEMA_PATH = Path(
    os.getenv("SCHEMA_MAP_PATH", _PROJECT_ROOT / "data" / "master_schema.json")
)
_SCHEMA_FALLBACK_PATH = Path(__file__).parent / "master_schema.json"


# ─────────────────────────────────────────────────────────────────────────────
# Lifespan — único lugar donde se tocan recursos compartidos
# ─────────────────────────────────────────────────────────────────────────────

@asynccontextmanager
async def lifespan(app: FastAPI):
    """
    Gestiona el ciclo de vida de la aplicación.

    Startup (antes del yield):
        - Inicializa el esquema de base de datos
        - Carga el esquema maestro en memoria
        - Inicializa los modelos de IA (SLMRouter, LLMGenerator)

    Shutdown (después del yield):
        - Libera los recursos de los modelos
    """
    # ── Startup ──────────────────────────────────────────────────────────────
    logger.info("=== FastAPI startup ===")

    # 1. Esquema de base de datos
    try:
        from backend.custom.master_schema import init_schema
        init_schema()
        logger.info("lifespan: schema inicializado")
        for route in app.routes:
            print(route.path)
    except Exception as e:
        logger.warning("lifespan: init_schema falló (DB no disponible?): %s", e)

    # 2. Esquema maestro en memoria
    app.state.esquema_maestro = _cargar_esquema_maestro()

    # 3. Modelos de IA — SIEMPRE después del esquema
    init_models(app)

    logger.info("=== FastAPI listo para recibir requests ===")

    yield

    # ── Shutdown ─────────────────────────────────────────────────────────────
    logger.info("=== FastAPI shutdown ===")
    teardown_models(app)


def _cargar_esquema_maestro() -> dict:
    """
    Carga master_schema.json en memoria. Retorna dict vacío si no existe.
    """
    schema_path = _SCHEMA_PATH
    if not schema_path.exists() and _SCHEMA_FALLBACK_PATH.exists():
        schema_path = _SCHEMA_FALLBACK_PATH

    if not schema_path.exists():
        logger.warning(
            "lifespan: master_schema.json no encontrado en %s ni en %s. "
            "El pipeline NL2SQL no tendrá contexto de tablas.",
            _SCHEMA_PATH,
            _SCHEMA_FALLBACK_PATH,
        )
        return {}

    try:
        with open(schema_path, encoding="utf-8") as f:
            esquema = json.load(f)
        logger.info(
            "lifespan: esquema maestro cargado — %d tablas desde %s",
            len(esquema),
            schema_path,
        )
        return esquema
    except (json.JSONDecodeError, OSError) as e:
        logger.error("lifespan: error cargando master_schema.json: %s", e)
        return {}


# ─────────────────────────────────────────────────────────────────────────────
# Aplicación
# ─────────────────────────────────────────────────────────────────────────────

app = FastAPI(
    title="NL2SQL API",
    description="Motor de consultas en lenguaje natural para PostgreSQL de organizaciones sociales.",
    version="0.1.0",
    lifespan=lifespan,
)

app.include_router(nl2sql_controller.router)
