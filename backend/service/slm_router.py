"""
backend/service/slm_router.py
─────────────────────────────────────────────────────────────────────────────
Router de Primer Nivel — NL2SQL Pipeline

Responsabilidad: dado un catálogo compacto de tablas y una pregunta en
lenguaje natural, identifica qué índices de tablas son relevantes.

Cadena LCEL:
  ChatPromptTemplate → ChatGroq → StrOutputParser → _parsear_indices()

Por qué StrOutputParser + parseo manual en lugar de JsonOutputParser:
  Los LLMs de chat (incluyendo Llama vía Groq) ocasionalmente envuelven
  el JSON en bloques ```json ... ```. JsonOutputParser no los limpia
  correctamente en todas las versiones de langchain-core. La estrategia
  StrOutputParser + _parsear_indices() es determinista y testeable de forma
  aislada, y la cadena LCEL sigue siendo pura (sin side effects externos).
─────────────────────────────────────────────────────────────────────────────
"""

import os
import re
import json
import logging
from typing import Any

from langchain_core.prompts import ChatPromptTemplate
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import RunnableLambda
from langchain_groq import ChatGroq

logger = logging.getLogger(__name__)

# ─────────────────────────────────────────────────────────────────────────────
# Prompts — cada variable de template va entre llaves simples.
# Las llaves dobles {{ }} son escapes literales para el f-string del sistema.
# ─────────────────────────────────────────────────────────────────────────────

_SYSTEM_PROMPT = """\
Eres un motor de enrutamiento de base de datos de alta precisión para el \
sector gastronómico y de gestión social.

Tu única función es analizar una pregunta en lenguaje natural e identificar \
qué índices de tablas del catálogo son necesarios para construir la consulta SQL.

REGLAS ABSOLUTAS:
1. Identificá todas las entidades, métricas y relaciones en la pregunta.
2. Si la pregunta implica un JOIN (ej: "organizaciones con mayor presupuesto"), \
seleccioná TODAS las tablas involucradas.
3. Seleccioná SOLO los índices necesarios. No agregues tablas "por las dudas".
4. Si ninguna tabla es relevante, retorná lista vacía.
5. Respondé EXCLUSIVAMENTE con un objeto JSON válido, sin markdown, \
sin explicaciones, sin texto adicional.

FORMATO DE RESPUESTA:
{{"indices_elegidos": ["T1", "T45"]}}

EJEMPLOS:
  Pregunta: "¿Cuántos proyectos sociales están vigentes?"
  → {{"indices_elegidos": ["T2"]}}

  Pregunta: "¿Qué organizaciones tienen mayor presupuesto asignado?"
  → {{"indices_elegidos": ["T1", "T45"]}}

  Pregunta: "¿Cómo preparo un asado?"
  → {{"indices_elegidos": []}}\
"""

_HUMAN_PROMPT = """\
CATÁLOGO DE TABLAS DISPONIBLES:
{catalogo}

PREGUNTA DEL USUARIO:
{pregunta}

Respondé EXCLUSIVAMENTE con el JSON.\
"""

# ─────────────────────────────────────────────────────────────────────────────
# Helpers de parseo — funciones puras, testeables de forma independiente
# ─────────────────────────────────────────────────────────────────────────────

def _limpiar_markdown(texto: str) -> str:
    """
    Elimina bloques de código markdown que algunos LLMs insertan alrededor
    del JSON aunque se les pida no hacerlo.

    Casos que maneja:
      ```json\\n{...}\\n```
      ```\\n{...}\\n```
      {... } (sin fences — ya limpio)
    """
    # Remover fences de código con o sin lenguaje
    limpio = re.sub(r"```(?:json)?\s*", "", texto, flags=re.IGNORECASE)
    limpio = limpio.replace("```", "")
    return limpio.strip()


def _parsear_indices(texto: str) -> list[str]:
    """
    Parsea la respuesta de texto del LLM y extrae la lista de índices.

    Estrategia defensiva en tres niveles:
      1. Limpiar markdown (```json ... ```)
      2. Parsear JSON estándar
      3. Si falla, buscar con regex el patrón ["T1", "T45"] directamente

    Returns:
        Lista de strings con índices (ej: ["T1", "T45"]).
        Lista vacía si el parseo falla completamente.
    """
    texto_limpio = _limpiar_markdown(texto)

    # Intento 1: JSON estándar
    try:
        data = json.loads(texto_limpio)
        indices = data.get("indices_elegidos", [])
        if isinstance(indices, list):
            # Asegurar que todos los elementos son strings
            return [str(i) for i in indices]
    except (json.JSONDecodeError, AttributeError):
        logger.warning("SLMRouter: JSON estándar falló para texto: %r", texto_limpio[:200])

    # Intento 2: regex — busca un array JSON dentro del texto
    patron = r'"indices_elegidos"\s*:\s*(\[[^\]]*\])'
    match = re.search(patron, texto_limpio)
    if match:
        try:
            indices = json.loads(match.group(1))
            if isinstance(indices, list):
                logger.warning("SLMRouter: recuperado via regex")
                return [str(i) for i in indices]
        except json.JSONDecodeError:
            pass

    logger.error("SLMRouter: no se pudo parsear la respuesta. Devolviendo []")
    return []


# ─────────────────────────────────────────────────────────────────────────────
# Clase principal
# ─────────────────────────────────────────────────────────────────────────────

class SLMRouter:
    """
    Router de primer nivel del pipeline NL2SQL.

    Usa un SLM económico vía Groq para mapear una pregunta en lenguaje
    natural a un subconjunto mínimo de índices de tablas, reduciendo el
    contexto que necesita el LLM generador de SQL.

    Cadena interna (LCEL):
        prompt | model | StrOutputParser() | RunnableLambda(_parsear_indices)

    El resultado de cadena.invoke(...) es siempre list[str], lo que
    simplifica el consumo y hace trivial el mockeo en Pytest:
        mock_chain.invoke.return_value = {"indices_elegidos": ["T2"]}

    Nota sobre el mock: el test mockea _crear_cadena() para que retorne
    un objeto con .invoke() que devuelve un dict. Por eso obtener_indices()
    usa _extraer_de_resultado() que maneja tanto dict como list[str].
    """

    def __init__(
        self,
        model_name: str | None = None,
        temperature: float = 0.0,
    ) -> None:
        self.model_name: str = (
            model_name
            or os.getenv("SLM_ROUTER_MODEL", "llama-3.3-70b-versatile")
        )
        self.temperature: float = temperature
        # _crear_cadena se llama aquí para que mocker.patch pueda
        # interceptarlo ANTES de que __init__ lo ejecute.
        self.cadena: Any = self._crear_cadena()

        logger.debug(
            "SLMRouter listo | modelo=%s temperature=%.1f",
            self.model_name, self.temperature
        )

    def _crear_cadena(self) -> Any:
        """
        Construye la cadena LCEL de 4 eslabones:

          1. ChatPromptTemplate   → formatea {pregunta} y {catalogo}
          2. ChatGroq             → invoca el SLM vía API de Groq
          3. StrOutputParser      → extrae el string del AIMessage
          4. RunnableLambda       → parsea el JSON y retorna list[str]

        El último eslabón convierte la salida en list[str] directamente,
        así cadena.invoke({...}) siempre retorna list[str] en producción.

        En tests, _crear_cadena es mockeada completa, por lo que este
        código no se ejecuta durante pytest.
        """
        prompt = ChatPromptTemplate.from_messages([
            ("system", _SYSTEM_PROMPT),
            ("human",  _HUMAN_PROMPT),
        ])

        model = ChatGroq(
            model=self.model_name,
            temperature=self.temperature,
            groq_api_key=os.getenv("GROQ_API_KEY"),
        )

        # La cadena completa retorna list[str] como valor final
        return prompt | model | StrOutputParser() | RunnableLambda(_parsear_indices)

    @staticmethod
    def _extraer_de_resultado(resultado: Any) -> list[str]:
        """
        Extrae la lista de índices de cualquier formato que devuelva invoke().

        Maneja tres casos posibles:
          - dict (mock de test):   {"indices_elegidos": ["T2"]} → ["T2"]
          - list (cadena real):    ["T2"] directamente          → ["T2"]
          - otro: log warning      → []

        Este método es la capa de compatibilidad entre el comportamiento
        real de la cadena (retorna list[str] gracias a RunnableLambda) y
        el mock del test (retorna dict con clave "indices_elegidos").
        """
        if isinstance(resultado, list):
            return [str(i) for i in resultado]

        if isinstance(resultado, dict):
            indices = resultado.get("indices_elegidos", [])
            return [str(i) for i in indices if i]

        logger.warning(
            "SLMRouter: tipo de resultado inesperado %s, devolviendo []",
            type(resultado)
        )
        return []

    def obtener_indices(self, pregunta: str, catalogo: str) -> list[str]:
        """
        Invoca la cadena LCEL y retorna los índices de tablas relevantes.

        Args:
            pregunta: Consulta en lenguaje natural del usuario final.
            catalogo: Catálogo compacto del esquema. Formato esperado:
                "T1: descripción de la tabla.\\n
                 T2: descripción de la tabla.\\n ..."

        Returns:
            Lista de strings con los índices seleccionados, ej: ["T1", "T45"].
            Lista vacía si ninguna tabla es relevante o el parseo falla.

        Raises:
            ValueError: Si pregunta o catálogo están vacíos.
        """
        if not pregunta or not pregunta.strip():
            raise ValueError("'pregunta' no puede estar vacía.")
        if not catalogo or not catalogo.strip():
            raise ValueError("'catalogo' no puede estar vacío.")

        logger.info("SLMRouter → pregunta: %r", pregunta[:100])

        resultado = self.cadena.invoke({
            "pregunta": pregunta,
            "catalogo": catalogo,
        })

        indices = self._extraer_de_resultado(resultado)

        logger.info("SLMRouter → índices seleccionados: %s", indices)
        return indices