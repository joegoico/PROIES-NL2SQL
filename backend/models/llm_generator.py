"""
backend/models/llm_generator.py
─────────────────────────────────────────────────────────────────────────────
Generador de SQL — Segunda Capa del Pipeline NL2SQL

Responsabilidades:
  1. generar_sql()  — dado un contexto de DDLs filtrados y una pregunta,
                      producir la query SQL correcta.
  2. corregir_sql() — dado un SQL roto + el error de PostgreSQL, producir
                      la query corregida (bucle de reflexión / self-healing).

Cada responsabilidad tiene su propia cadena LCEL con un prompt especializado.
Ambas cadenas usan StrOutputParser: invoke() retorna siempre un string,
no un dict. Esto contrasta con SLMRouter que retorna dict/list.

Limpieza de markdown:
  Los LLMs de chat habitualmente envuelven el SQL en bloques ```sql ... ```.
  _limpiar_sql() los elimina antes de retornar, garantizando que la query
  pueda ejecutarse directamente en PostgreSQL sin preprocesamiento adicional.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import os
import re
import logging
from typing import Any

from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_groq import ChatGroq

from backend.prompts import _SYSTEM_CORRECCION

logger = logging.getLogger(__name__)



# ─────────────────────────────────────────────────────────────────────────────
# Helper de limpieza — función pura, testeable de forma independiente
# ─────────────────────────────────────────────────────────────────────────────

def _limpiar_sql(texto: str) -> str:
    """
    Elimina bloques de código markdown que los LLMs insertan alrededor del SQL.

    Casos que maneja:
        ```sql\\nSELECT ...\\n```  →  SELECT ...
        ```\\nSELECT ...\\n```     →  SELECT ...
        SELECT ...               →  SELECT ...   (sin cambios)

    No modifica el contenido SQL en sí: no normaliza mayúsculas, no agrega
    punto y coma, no toca los espacios internos.

    Returns:
        SQL limpio sin fences de markdown, con strip() aplicado.
    """
    # Remover apertura: ```sql o ``` con espacios/newlines opcionales
    limpio = re.sub(r"```(?:sql)?\s*", "", texto, flags=re.IGNORECASE)
    # Remover cierre: ``` con espacios/newlines opcionales
    limpio = limpio.replace("```", "")
    return limpio.strip()


# ─────────────────────────────────────────────────────────────────────────────
# Clase principal
# ─────────────────────────────────────────────────────────────────────────────

class LLMGenerator:
    """
    Generador de SQL de segunda capa del pipeline NL2SQL.

    Recibe el contexto ya filtrado por SLMRouter (DDLs de las tablas
    relevantes) y produce la query SQL final usando un LLM más potente.

    Tiene dos cadenas LCEL independientes:
      - cadena:            para generación de SQL desde cero.
      - cadena_correccion: para corregir SQL que falló en PostgreSQL.

    Ambas cadenas se crean en __init__ para que los mocks de pytest puedan
    interceptar _crear_cadena() y _crear_cadena_correccion() antes de que
    la instancia se construya completamente.

    Ejemplo de uso::

        generador = LLMGenerator()

        sql = generador.generar_sql(
            pregunta="¿Cuántas organizaciones hay activas?",
            contexto_tablas=ddl_filtrado,
        )

        sql_fix = generador.corregir_sql(
            sql_erroneo=sql,
            error_db='column "activo" does not exist',
            contexto_tablas=ddl_filtrado,
        )
    """

    def __init__(self, model_name: str | None = None, temperature: float = 0.0) -> None:
        """
        Args:
            model_name: Nombre del modelo Groq. Por defecto lee la variable
                de entorno LLM_MODEL o usa llama-3.3-70b-versatile.
            temperature: Temperatura del LLM. 0.0 para SQL determinista.
        """
        self.model_name: str = (
            model_name
            or os.getenv("LLM_MODEL", "llama-3.3-70b-versatile")
        )
        self.temperature: float = temperature

        # Ambos llamados en __init__ para que mocker.patch los intercepte.
        self.cadena: Any = self._crear_cadena()
        self.cadena_correccion: Any = self._crear_cadena_correccion()

        logger.debug(
            "LLMGenerator listo | modelo=%s temperature=%.1f",
            self.model_name,
            self.temperature,
        )

    # ─────────────────────────────────────────────────────────────────────────
    # Construcción de cadenas LCEL
    # ─────────────────────────────────────────────────────────────────────────

    def _crear_cadena(self) -> Any:
        """
        Cadena LCEL para generación de SQL:
            ChatPromptTemplate({contexto_tablas, pregunta})
            → ChatGroq
            → StrOutputParser  →  string limpio del AIMessage

        invoke() retorna un string (posiblemente con fences markdown).
        generar_sql() aplica _limpiar_sql() antes de retornar.
        """
        from backend.prompts import get_prompt_generacion

        return get_prompt_generacion() | self._construir_model() | StrOutputParser()

    def _crear_cadena_correccion(self) -> Any:
        """
        Cadena LCEL para corrección de SQL:
            ChatPromptTemplate({sql_erroneo, error_db, contexto_tablas})
            → ChatGroq
            → StrOutputParser

        Cadena independiente con un prompt especializado en diagnóstico
        de errores de PostgreSQL.
        """
        from backend.prompts import get_prompt_correccion
        
        return get_prompt_correccion() | self._construir_model() | StrOutputParser()

    def _construir_model(self) -> ChatGroq:
        """
        Instancia ChatGroq con la configuración del generador.
        Método separado para facilitar override en subclases o tests.
        """
        return ChatGroq(
            model=self.model_name,
            temperature=self.temperature,
            api_key=os.getenv("GROQ_API_KEY"),
        )

    # ─────────────────────────────────────────────────────────────────────────
    # API pública
    # ─────────────────────────────────────────────────────────────────────────

    def generar_sql(self, pregunta: str, contexto_tablas: str) -> str:
        """
        Genera una query SQL a partir de una pregunta y el contexto de tablas.

        Args:
            pregunta: Pregunta en lenguaje natural del usuario final.
            contexto_tablas: DDLs y descripciones de las tablas relevantes,
                ya filtradas por SLMRouter. No debe estar vacío.

        Returns:
            Query SQL lista para ejecutar en PostgreSQL, sin fences markdown.

        Raises:
            ValueError: Si contexto_tablas está vacío. Se frena antes de
                invocar la cadena para no desperdiciar tokens de API.
        """
        if not contexto_tablas or not contexto_tablas.strip():
            raise ValueError(
                "El contexto del esquema no puede estar vacío. "
                "Verificar que SLMRouter seleccionó tablas válidas antes de generar SQL."
            )

        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        logger.info("LLMGenerator.generar_sql | pregunta=%r", pregunta[:100])

        resultado: str = self.cadena.invoke({
            "pregunta":        pregunta,
            "contexto_tablas": contexto_tablas,
        })

        sql_limpio = _limpiar_sql(resultado)
        logger.info("LLMGenerator.generar_sql | sql=%r", sql_limpio[:200])

        return sql_limpio

    def corregir_sql(
        self,
        sql_erroneo: str,
        error_db: str,
        contexto_tablas: str,
    ) -> str:
        """
        Corrige un SQL que falló al ejecutarse en PostgreSQL.

        Implementa el bucle de reflexión (self-healing) del pipeline:
        cuando DBRepository lanza un error de ejecución, el controller
        puede llamar a este método para obtener una query corregida
        antes de reintentar.

        Args:
            sql_erroneo: La query SQL que falló.
            error_db: Mensaje de error exacto retornado por PostgreSQL.
            contexto_tablas: DDLs de las tablas involucradas.

        Returns:
            Query SQL corregida, sin fences markdown.

        Raises:
            ValueError: Si contexto_tablas está vacío.
        """
        if not contexto_tablas or not contexto_tablas.strip():
            raise ValueError(
                "El contexto del esquema no puede estar vacío. "
                "No es posible corregir SQL sin el esquema de referencia."
            )

        logger.info(
            "LLMGenerator.corregir_sql | error=%r | sql=%r",
            error_db[:100],
            sql_erroneo[:100],
        )

        # Las keys del dict deben coincidir exactamente con las variables
        # del template _HUMAN_CORRECCION: {sql_erroneo}, {error_db}, {contexto_tablas}
        resultado: str = self.cadena_correccion.invoke({
            "sql_erroneo":    sql_erroneo,
            "error_db":       error_db,
            "contexto_tablas": contexto_tablas,
        })

        sql_limpio = _limpiar_sql(resultado)
        logger.info("LLMGenerator.corregir_sql | sql_corregido=%r", sql_limpio[:200])

        return sql_limpio