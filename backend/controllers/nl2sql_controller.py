"""
backend/controllers/nl2sql_controller.py
─────────────────────────────────────────────────────────────────────────────
Controller FastAPI — endpoint /ask

Los modelos de IA (SLMRouter, LLMGenerator) se leen desde request.app.state,
NO desde Depends(). Esto evita que FastAPI haga deepcopy de objetos con
_thread.RLock (httpx client de ChatGroq).

Los únicos Depends() permitidos son:
  - Tipos Pydantic puros
  - Funciones que retornan tipos simples (str, int, dict)
  - Clases cuyo __init__ solo tiene parámetros Pydantic-compatibles
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import logging

from fastapi import APIRouter, Request, HTTPException
from fastapi.responses import JSONResponse

from backend.custom.custom_classes import Query
from backend.service.nl2sql_service import NL2SQLService

logger = logging.getLogger(__name__)

router = APIRouter(prefix="/api", tags=["NL2SQL"])


@router.post("/ask")
def ask_database(body: Query, request: Request) -> JSONResponse:
    """
    Endpoint principal: convierte una pregunta en lenguaje natural a SQL
    y retorna el resultado de ejecutarlo en PostgreSQL.

    Args:
        body: Cuerpo del request con la pregunta (modelo Pydantic Query).
        request: Request de FastAPI, usado para acceder a app.state.

    Returns:
        JSONResponse con el resultado de la consulta.
    """
    try:
        # Leer modelos desde app.state — NUNCA desde Depends()
        slm_router    = request.app.state.slm_router
        llm_generator = request.app.state.llm_generator
        esquema_maestro = request.app.state.esquema_maestro

        # Construir el service inyectando el router desde app.state
        service = NL2SQLService(router=slm_router)

        resultado = service.procesar_pregunta(
            pregunta=body.pregunta,
            esquema_maestro=esquema_maestro,
        )

        return JSONResponse(content=resultado)

    except ValueError as e:
        logger.warning("ask_database: ValueError — %s", e)
        raise HTTPException(status_code=422, detail=str(e))

    except Exception as e:
        logger.exception("ask_database: error inesperado")
        raise HTTPException(
            status_code=500,
            detail=f"Error interno del servidor: {type(e).__name__}",
        )