"""
backend/custom/context_resolver.py
─────────────────────────────────────────────────────────────────────────────
Resolución contextual heurística previa al SchemaPrefilter (arquitectura por
etapas).

Etapas:
  1. Detector de referencias explícitas: evalúa una estructura clasificada de
     patrones para referencias plurales (partitivas y pronominales/
     demostrativas: «esas», «esos», «ellas», «ellos», «estas», «estos») y
     referencias de identidad a entidad nombrada («el mismo», «la misma»).
  2. Heurística de respaldo: solo si el detector explícito no encuentra
     coincidencias, evalúa si la pregunta presenta una dependencia implícita
     por elipsis del núcleo nominal (ej. «¿Y cuántas tienen donaciones?»,
     «¿Cuántos son externos?»).
  3. Resolución: busca antecedentes compatibles en el historial (de más
     reciente a más antiguo) y reescribe únicamente cuando hay evidencia de
     un referente único y confiable. Si alguna referencia no puede resolverse
     con certeza, conserva la pregunta original exacta sin sustituciones
     parciales.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import re
from dataclasses import dataclass
from typing import Literal

TipoReferencia = Literal["plural_partitivo", "plural_pronominal", "entidad"]
Genero = Literal["F", "M"]

_DEMOSTRATIVOS_Y_PRONOMBRES = r"esas|esos|ellas|ellos|estas|estos"
_INTERROGATIVOS = {
    "cuántos",
    "cuántas",
    "cuantos",
    "cuantas",
    "cuáles",
    "cuales",
    "qué",
    "que",
}
_CONJUNCIONES = {"y", "e", "o", "u"}
_VERBOS_PREDICADO_PLURAL = (
    r"tienen|est[áa]n|son|recibieron|participan|trabajan|cuentan|poseen|pertenecen"
)


@dataclass(frozen=True)
class PatronReferenciaExplicita:
    """Patrón clasificado del detector de referencias explícitas."""

    nombre: str
    tipo: TipoReferencia
    expresion: re.Pattern[str]


_PATRON_PARTITIVO_PLURAL = PatronReferenciaExplicita(
    nombre="partitivo_plural",
    tipo="plural_partitivo",
    expresion=re.compile(
        rf"\b(?P<q>cu[áa]nt[oa]s|cu[áa]les)\s+de\s+(?P<p>{_DEMOSTRATIVOS_Y_PRONOMBRES})\b",
        re.IGNORECASE,
    ),
)
_PATRON_PRONOMBRE_PLURAL = PatronReferenciaExplicita(
    nombre="pronombre_plural",
    tipo="plural_pronominal",
    expresion=re.compile(
        rf"\b(?P<p>{_DEMOSTRATIVOS_Y_PRONOMBRES})\b",
        re.IGNORECASE,
    ),
)
_PATRON_IDENTIDAD_ENTIDAD = PatronReferenciaExplicita(
    nombre="identidad_entidad",
    tipo="entidad",
    expresion=re.compile(
        r"\b(?:el\s+mismo|la\s+misma)\b",
        re.IGNORECASE,
    ),
)

PATRONES_REFERENCIA_EXPLICITA: tuple[PatronReferenciaExplicita, ...] = (
    _PATRON_PARTITIVO_PLURAL,
    _PATRON_PRONOMBRE_PLURAL,
    _PATRON_IDENTIDAD_ENTIDAD,
)

_RE_DEPENDENCIA_IMPLICITA = re.compile(
    rf"^(?P<prefijo>\W*(?:y\s+)?(?P<q>cu[áa]nt[oa]s))\s+(?P<verbo>{_VERBOS_PREDICADO_PLURAL})\b",
    re.IGNORECASE,
)

_RE_CONTEO_EXISTENCIAL = re.compile(
    r"^\W*(?:y\s+)?(?P<q>cu[áa]nt[oa]s)\s+(?P<ref>[^?¿¡!.,;:]+?)\s+(?:hay|existen)\W*$",
    re.IGNORECASE,
)
_RE_CONTEO_PREDICATIVO = re.compile(
    rf"^\W*(?:y\s+)?(?P<q>cu[áa]nt[oa]s)\s+(?P<nucleo>[^?¿¡!.,;:]+?)\s+(?:{_VERBOS_PREDICADO_PLURAL})\s+(?P<pred>[^?¿¡!.,;:]+?)\W*$",
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
    """Resultado inmutable de contextualizar una pregunta."""

    pregunta_original: str
    pregunta_resuelta: str
    uso_contexto: bool


class ContextResolver:
    """
    Resuelve referencias contextuales mediante detección por etapas:
      1. Detector de referencias explícitas clasificadas.
      2. Heurística de respaldo para dependencias implícitas (elipsis).
      3. Búsqueda conservadora de antecedentes compatibles.
    """

    def resolver(self, pregunta: str, historial: list[str]) -> ResultadoResolucion:
        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        if not historial:
            return self._sin_cambios(pregunta)

        # Etapa 1: Detector de referencias explícitas
        patrones_activos = [
            p for p in PATRONES_REFERENCIA_EXPLICITA if p.expresion.search(pregunta)
        ]
        if patrones_activos:
            return self._resolver_referencias_explicitas(
                pregunta, historial, patrones_activos
            )

        # Etapa 2: Heurística de respaldo (solo si no hubo referencias explícitas)
        return self._resolver_dependencia_implicita(pregunta, historial)

    def _resolver_referencias_explicitas(
        self,
        pregunta: str,
        historial: list[str],
        patrones_activos: list[PatronReferenciaExplicita],
    ) -> ResultadoResolucion:
        resuelta = pregunta
        tipos_activos = {p.tipo for p in patrones_activos}

        if "plural_partitivo" in tipos_activos or "plural_pronominal" in tipos_activos:
            pronombres = [
                m["p"] for m in _PATRON_PRONOMBRE_PLURAL.expresion.finditer(resuelta)
            ]
            generos = {self._genero_palabra(p) for p in pronombres}
            referentes_por_genero: dict[Genero, str] = {}
            for genero in generos:
                ref = self._buscar_referente_plural(historial, genero)
                if ref is None:
                    return self._sin_cambios(pregunta)
                referentes_por_genero[genero] = ref

            resuelta = _PATRON_PARTITIVO_PLURAL.expresion.sub(
                lambda m: (
                    f"{m['q']} "
                    f"{referentes_por_genero[self._genero_palabra(m['p'])]}"
                ),
                resuelta,
            )
            resuelta = _PATRON_PRONOMBRE_PLURAL.expresion.sub(
                lambda m: (
                    f"{self._articulo(m['p'])} "
                    f"{referentes_por_genero[self._genero_palabra(m['p'])]}"
                ),
                resuelta,
            )

        if "entidad" in tipos_activos:
            entidad = self._buscar_entidad_nombrada(historial)
            if entidad is None:
                return self._sin_cambios(pregunta)
            resuelta = _PATRON_IDENTIDAD_ENTIDAD.expresion.sub(
                lambda _: entidad, resuelta
            )

        if resuelta == pregunta:
            return self._sin_cambios(pregunta)

        return ResultadoResolucion(pregunta, resuelta, True)

    def _resolver_dependencia_implicita(
        self, pregunta: str, historial: list[str]
    ) -> ResultadoResolucion:
        coincidencia = _RE_DEPENDENCIA_IMPLICITA.match(pregunta)
        if coincidencia is None:
            return self._sin_cambios(pregunta)

        genero = self._genero_palabra(coincidencia["q"])
        referente = self._buscar_referente_plural(historial, genero)
        if referente is None:
            return self._sin_cambios(pregunta)

        resuelta = _RE_DEPENDENCIA_IMPLICITA.sub(
            lambda m: f"{m['prefijo']} {referente} {m['verbo']}",
            pregunta,
            count=1,
        )
        return ResultadoResolucion(pregunta, resuelta, True)

    @staticmethod
    def _sin_cambios(pregunta: str) -> ResultadoResolucion:
        return ResultadoResolucion(pregunta, pregunta, False)

    @staticmethod
    def _articulo(pronombre: str) -> str:
        return "las" if pronombre.lower().endswith("as") else "los"

    @staticmethod
    def _genero_palabra(palabra: str) -> Genero:
        return "F" if palabra.lower().endswith("as") else "M"

    @staticmethod
    def _normalizar_espacios(texto: str) -> str:
        return " ".join(texto.lower().split())

    def _buscar_referente_plural(
        self, historial: list[str], genero_buscado: Genero
    ) -> str | None:
        candidatos_reemplazo: list[str] = []
        conjuntos_detectados: set[str] = set()

        for pregunta_previa in reversed(historial):
            info_conteo = self._extraer_candidato_plural(pregunta_previa)
            if info_conteo is None:
                continue

            genero_ref, referente, es_reemplazable = info_conteo
            if genero_ref != genero_buscado:
                continue

            conjuntos_detectados.add(self._normalizar_espacios(referente))
            if es_reemplazable:
                candidatos_reemplazo.append(referente)

        if not candidatos_reemplazo or len(conjuntos_detectados) != 1:
            return None

        return candidatos_reemplazo[0]

    def _buscar_entidad_nombrada(self, historial: list[str]) -> str | None:
        candidatos: list[str] = []

        for pregunta_previa in reversed(historial):
            entidad = self._entidad_nombrada(pregunta_previa)
            if entidad is not None:
                candidatos.append(entidad)

        if not candidatos:
            return None

        normalizados = {self._normalizar_espacios(c) for c in candidatos}
        if len(normalizados) != 1:
            return None

        return candidatos[0]

    @classmethod
    def _extraer_candidato_plural(
        cls, anterior: str
    ) -> tuple[Genero, str, bool] | None:
        coincidencia = _RE_CONTEO_EXISTENCIAL.match(anterior)
        if coincidencia is not None:
            referente = coincidencia["ref"].strip()
            if not cls._sintagma_plural_valido(referente):
                return None
            genero = cls._genero_palabra(coincidencia["q"])
            return genero, referente, True

        coincidencia_pred = _RE_CONTEO_PREDICATIVO.match(anterior)
        if coincidencia_pred is not None:
            nucleo = coincidencia_pred["nucleo"].strip()
            pred = coincidencia_pred["pred"].strip()
            if cls._sintagma_plural_valido(nucleo):
                genero = cls._genero_palabra(coincidencia_pred["q"])
                # Representa un subconjunto filtrado por predicado: cuenta
                # como conjunto candidato para detección de ambigüedad, pero
                # no es insertable directamente como sintagma nominal simple.
                return genero, f"{nucleo} ({pred})", False

        return None

    @staticmethod
    def _sintagma_plural_valido(referente: str) -> bool:
        tokens = [t.lower() for t in referente.split()]
        if any(t in _INTERROGATIVOS for t in tokens):
            return False
        if re.search(
            rf"\b({_DEMOSTRATIVOS_Y_PRONOMBRES})\b", referente, re.IGNORECASE
        ):
            return False
        if len(tokens) > 1 and tokens[1] in _CONJUNCIONES:
            return False
        return True

    @staticmethod
    def _entidad_nombrada(anterior: str) -> str | None:
        for patron in (_RE_ENTIDAD_ENTRECOMILLAS, _RE_ENTIDAD_CAPITALIZADA):
            coincidencia = patron.search(anterior)
            if coincidencia:
                return coincidencia["ent"].strip()
        return None


