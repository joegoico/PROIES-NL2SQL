"""
backend/custom/custom_classes.py
─────────────────────────────────────────────────────────────────────────────
Modelos Pydantic compartidos entre capas de la aplicación.

Eliminados en esta refactorización:
  - TableSelector: reemplazado por SLMRouter + _parsear_indices()
  - llm_estricto:  reemplazado por SLMRouter._crear_cadena()
  - table_chain:   reemplazado por SLMRouter.cadena
─────────────────────────────────────────────────────────────────────────────
"""

from pydantic import BaseModel, Field


class Query(BaseModel):
    """
    Cuerpo del request para el endpoint POST /api/ask.

    Atributos:
        pregunta: Consulta en lenguaje natural del usuario final.

    Ejemplo de request body:
        {"pregunta": "¿Cuántas organizaciones están activas?"}
    """
    pregunta: str = Field(
        ...,
        min_length=3,
        description="Consulta en lenguaje natural a convertir en SQL.",
        examples=["¿Cuántas organizaciones están activas?"],
    )