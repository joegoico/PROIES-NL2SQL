"""
backend/custom/context_resolver.py
─────────────────────────────────────────────────────────────────────────────
Resolución contextual heurística previa al SchemaPrefilter.

Dada la pregunta actual y el historial, intenta producir una pregunta
autónoma reemplazando referencias («esas», «de ellas», «el mismo») por su
referente. Si no hay un referente único y confiable, devuelve la pregunta
original sin cambios (política conservadora).

Reglas explícitas y acotadas (versión 1):
  - Solo se usa la pregunta MÁS RECIENTE del historial.
  - Referente plural: la pregunta previa debe tener exactamente la forma
    «¿Cuántos/as <sintagma nominal> hay|existen?». El sintagma se copia
    textualmente (incluye modificadores, p. ej. «organizaciones rurales»).
  - Referente singular («el mismo»): la pregunta previa debe terminar en
    «de|del <Nombre Propio de 2+ palabras capitalizadas>» o en
    «de|del "nombre entre comillas"». La capitalización por sí sola no basta:
    se exige además el marco sintáctico (preposición + cierre de pregunta).
  - Si la pregunta contiene referencias y alguna no puede resolverse, no se
    resuelve ninguna (nunca se devuelve una pregunta a medio resolver).

Limitaciones conocidas (se dejan SIN resolver a propósito):
  - Previas con predicado («¿Cuántas organizaciones están activas?»): el
    filtro del predicado se perdería, así que no se usa como referente.
  - Sintagma con dos núcleos coordinados («organizaciones y actores»): una
    conjunción justo tras el primer núcleo es ambigua. Una conjunción entre
    modificadores («organizaciones rurales y urbanas») sí se tolera.
  - Nombres propios de una sola palabra, o precedidos por otra preposición
    («entre X y Y», «de la Cruz Roja»), no se reconocen.
  - No se verifica concordancia de género entre pronombre y referente.
  - Solo «el mismo» (no «la misma») y solo pronombres plurales.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import re
from dataclasses import dataclass

_PRONOMBRES = r"esas|esos|ellas|ellos"
_INTERROGATIVOS = {"cuántos", "cuántas", "cuantos", "cuantas", "cuáles", "cuales", "qué", "que"}
_CONJUNCIONES = {"y", "e", "o", "u"}

_RE_PARTITIVO = re.compile(
    rf"\b(?P<q>cu[áa]nt[oa]s|cu[áa]les)\s+de\s+(?P<p>{_PRONOMBRES})\b",
    re.IGNORECASE,
)
_RE_PRONOMBRE = re.compile(rf"\b(?P<p>{_PRONOMBRES})\b", re.IGNORECASE)
_RE_EL_MISMO = re.compile(r"\bel\s+mismo\b", re.IGNORECASE)

_RE_CONTEO = re.compile(
    r"^\W*cu[áa]nt[oa]s\s+(?P<ref>[^?¿¡!.,;:]+?)\s+(?:hay|existen)\W*$",
    re.IGNORECASE,
)
_RE_ENTIDAD_CAPITALIZADA = re.compile(
    r"\b(?:de|del)\s+(?P<ent>[A-ZÁÉÍÓÚÑ]\w+(?:\s+[A-ZÁÉÍÓÚÑ]\w+)+)\W*$"
)
_RE_ENTIDAD_ENTRECOMILLAS = re.compile(
    r"\b(?:de|del)\s+[\"“«](?P<ent>[^\"”»]+)[\"”»]\W*$"
)


@dataclass(frozen=True)
class ResultadoResolucion:
    """Resultado de contextualizar una pregunta."""

    pregunta_original: str
    pregunta_resuelta: str
    uso_contexto: bool


class ContextResolver:
    """
    Resuelve referencias de seguimiento usando solo la pregunta más reciente.

    No tiene estado y no modifica el historial recibido.
    """

    def resolver(self, pregunta: str, historial: list[str]) -> ResultadoResolucion:
        """
        Args:
            pregunta: Pregunta actual del usuario.
            historial: Preguntas originales previas, en orden cronológico.

        Returns:
            ResultadoResolucion. uso_contexto es True solo si la pregunta
            resuelta incorpora información del historial.

        Raises:
            ValueError: Si la pregunta está vacía o es None.
        """
        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        if not historial:
            return self._sin_cambios(pregunta)

        anterior = historial[-1]
        resuelta = pregunta

        if _RE_PRONOMBRE.search(resuelta):
            referente = self._referente_plural(anterior)
            if referente is None:
                return self._sin_cambios(pregunta)
            resuelta = _RE_PARTITIVO.sub(
                lambda m: f"{m['q']} {referente}", resuelta
            )
            resuelta = _RE_PRONOMBRE.sub(
                lambda m: f"{self._articulo(m['p'])} {referente}", resuelta
            )

        if _RE_EL_MISMO.search(resuelta):
            entidad = self._entidad_nombrada(anterior)
            if entidad is None:
                return self._sin_cambios(pregunta)
            resuelta = _RE_EL_MISMO.sub(lambda _: entidad, resuelta)

        if resuelta == pregunta:
            return self._sin_cambios(pregunta)

        return ResultadoResolucion(pregunta, resuelta, True)

    @staticmethod
    def _sin_cambios(pregunta: str) -> ResultadoResolucion:
        return ResultadoResolucion(pregunta, pregunta, False)

    @staticmethod
    def _articulo(pronombre: str) -> str:
        return "las" if pronombre.lower().endswith("as") else "los"

    @staticmethod
    def _referente_plural(anterior: str) -> str | None:
        coincidencia = _RE_CONTEO.match(anterior)
        if coincidencia is None:
            return None

        referente = coincidencia["ref"].strip()
        tokens = [t.lower() for t in referente.split()]

        if any(t in _INTERROGATIVOS for t in tokens):
            return None
        if re.search(rf"\b({_PRONOMBRES})\b", referente, re.IGNORECASE):
            return None
        # Conjunción justo tras el primer núcleo → dos núcleos posibles.
        if len(tokens) > 1 and tokens[1] in _CONJUNCIONES:
            return None

        return referente

    @staticmethod
    def _entidad_nombrada(anterior: str) -> str | None:
        for patron in (_RE_ENTIDAD_ENTRECOMILLAS, _RE_ENTIDAD_CAPITALIZADA):
            coincidencia = patron.search(anterior)
            if coincidencia:
                return coincidencia["ent"].strip()
        return None
