"""
backend/engine.py
─────────────────────────────────────────────────────────────────────────────
Gestión del ciclo de vida de los modelos de IA


PATRÓN CORRECTO — Singleton en app.state vía lifespan:
  Los objetos con conexiones HTTP activas (ChatGroq, SQLAlchemy Engine)
  deben inicializarse UNA sola vez en el evento lifespan de FastAPI y
  almacenarse en app.state. Así:
    - Se crean antes de recibir el primer request.
    - FastAPI nunca los deepcopia (viven en el estado de la app, no en Depends).
    - Se cierran limpiamente al apagar el servidor.

USAGE en main.py:
    from contextlib import asynccontextmanager
    from fastapi import FastAPI
    from backend.engine import init_models, teardown_models

    @asynccontextmanager
    async def lifespan(app: FastAPI):
        init_models(app)          # ← crea SLMRouter y LLMGenerator UNA vez
        yield
        teardown_models(app)      # ← limpieza

    app = FastAPI(lifespan=lifespan)

USAGE en el controller:
    from fastapi import Request

    @router.post("/ask")
    def ask(request: Request, body: NL2SQLRequest):
        slm_router = request.app.state.slm_router
        llm_generator = request.app.state.llm_generator
        ...
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import os
import logging
from typing import TYPE_CHECKING

from langchain_groq import ChatGroq

if TYPE_CHECKING:
    from fastapi import FastAPI
    from backend.models.slm_router import SLMRouter
    from backend.models.llm_generator import LLMGenerator

logger = logging.getLogger(__name__)


# ─────────────────────────────────────────────────────────────────────────────
# Inicialización y teardown — llamados desde lifespan de FastAPI
# ─────────────────────────────────────────────────────────────────────────────

def init_models(app: "FastAPI") -> None:
    """
    Inicializa todos los modelos de IA y los guarda en app.state.

    Debe llamarse UNA sola vez desde el lifespan de FastAPI, antes de
    recibir el primer request. Nunca llamar desde un endpoint o un Depends().

    Guarda en app.state:
        - app.state.slm_router    : SLMRouter  (Llama 3 8B vía Groq)
        - app.state.llm_generator : LLMGenerator (Llama 3 70B vía Groq)
    """
    # Import diferido para evitar que engine.py dependa de la estructura
    # de paquetes en tiempo de módulo (facilita los tests unitarios).
    from backend.models.slm_router import SLMRouter
    from backend.models.llm_generator import LLMGenerator

    logger.info("engine: inicializando modelos...")

    app.state.slm_router = SLMRouter(
        model_name=os.getenv("SLM_ROUTER_MODEL", "llama-3.1-8b-instant"),
    )
    logger.info("engine: SLMRouter listo (model=%s)", app.state.slm_router.model_name)

    app.state.llm_generator = LLMGenerator(
        model_name=os.getenv("LLM_MODEL", "llama-3.3-70b-versatile"),
    )
    logger.info("engine: LLMGenerator listo (model=%s)", app.state.llm_generator.model_name)

    logger.info("engine: todos los modelos inicializados correctamente")


def teardown_models(app: "FastAPI") -> None:
    """
    Limpia los recursos de los modelos al apagar el servidor.

    ChatGroq / httpx no requieren cierre explícito pero esta función
    existe para extensibilidad (ej: cerrar conexiones de DB, flush de logs).
    """
    logger.info("engine: liberando recursos de modelos...")
    # Eliminamos las referencias para que el GC pueda limpiar los clientes HTTP
    if hasattr(app.state, "slm_router"):
        del app.state.slm_router
    if hasattr(app.state, "llm_generator"):
        del app.state.llm_generator
    logger.info("engine: teardown completo")


# ─────────────────────────────────────────────────────────────────────────────
# Getters directos — para código que no tiene acceso a app.state
# (ej: scripts CLI, tests de integración, Jupyter notebooks)
#
# NO usar estos getters dentro de endpoints FastAPI: usar app.state.
# ─────────────────────────────────────────────────────────────────────────────

# Singletons a nivel de módulo — se crean solo si se piden explícitamente
_slm_router: "SLMRouter | None" = None
_llm_generator: "LLMGenerator | None" = None


def get_slm_router() -> "SLMRouter":
    """
    Retorna la instancia singleton de SLMRouter.

    Crea la instancia en el primer llamado y la reutiliza en los siguientes.
    Patrón singleton explícito (sin @lru_cache) para evitar el error de
    deepcopy con _thread.RLock.

    Para uso en FastAPI usar app.state.slm_router en su lugar.
    """
    global _slm_router
    if _slm_router is None:
        from backend.models.slm_router import SLMRouter
        _slm_router = SLMRouter(
            model_name=os.getenv("SLM_ROUTER_MODEL", "llama-3.1-8b-instant"),
        )
        logger.debug("engine.get_slm_router: instancia creada")
    return _slm_router


def get_llm_generator() -> "LLMGenerator":
    """
    Retorna la instancia singleton de LLMGenerator.

    Mismo patrón que get_slm_router(). Para uso fuera de FastAPI.
    """
    global _llm_generator
    if _llm_generator is None:
        from backend.models.llm_generator import LLMGenerator
        _llm_generator = LLMGenerator(
            model_name=os.getenv("LLM_MODEL", "llama-3.3-70b-versatile"),
        )
        logger.debug("engine.get_llm_generator: instancia creada")
    return _llm_generator


def get_llm() -> ChatGroq:
    """
    Retorna una instancia de ChatGroq directa (sin wrapper).

    Útil cuando se necesita el modelo crudo para construir cadenas LCEL
    custom fuera de SLMRouter o LLMGenerator.

    IMPORTANTE: cada llamado crea una instancia NUEVA. Si necesitás
    reutilizar la misma instancia, usá get_llm_generator().
    """
    return ChatGroq(
        model=os.getenv("LLM_MODEL", "llama-3.3-70b-versatile"),
        temperature=0,
        api_key=os.getenv("GROQ_API_KEY"),
    )


# Alias de compatibilidad para código que usaba el nombre anterior
models = get_llm_generator