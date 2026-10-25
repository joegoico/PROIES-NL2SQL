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
_PREPOSICIONES_SINTAGMA = {
    "de",
    "del",
    "en",
    "con",
    "sin",
    "por",
    "para",
    "sobre",
    "entre",
    "hacia",
    "según",
    "segun",
}
_PARTICULAS_PREVERBALES = {
    "no",
    "ya",
    "también",
    "tambien",
    "aún",
    "aun",
    "todavía",
    "todavia",
    "se",
    "le",
    "les",
    "nos",
    "me",
    "te",
    "lo",
    "la",
    "los",
    "las",
}
_VERBOS_PLURAL_CORTOS_O_IRREGULARES = {
    "son",
    "están",
    "estan",
    "han",
    "van",
    "dan",
    "tienen",
    "vienen",
    "pueden",
    "quieren",
    "saben",
    "hacen",
    "dicen",
    "ponen",
    "salen",
    "valen",
    "caen",
    "traen",
    "oyen",
    "leen",
    "creen",
    "poseen",
    "proveen",
    "fueron",
    "dieron",
    "vieron",
}
_SUFIJOS_NOMINALES_EN_N = (
    "cion",
    "ciones",
    "sion",
    "siones",
    "xion",
    "xiones",
    "gion",
    "giones",
    "men",
    "menes",
    "gen",
    "genes",
    "ven",
    "venes",
    "den",
    "denes",
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
        rf"\b(?P<q>cu[áa]nt[oa]s|cu[áa]les)\s+de\s+(?P<p>{_DEMOSTRATIVOS_Y_PRONOMBRES})\b(?P<sig>\s+[a-záéíóúñü]+)?",
        re.IGNORECASE,
    ),
)
_PATRON_PRONOMBRE_PLURAL = PatronReferenciaExplicita(
    nombre="pronombre_plural",
    tipo="plural_pronominal",
    expresion=re.compile(
        rf"\b(?P<p>{_DEMOSTRATIVOS_Y_PRONOMBRES})\b(?P<sig>\s+[a-záéíóúñü]+)?",
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

_RE_ENCABEZADO_CUANTIFICADO = re.compile(
    r"^(?P<prefijo>\W*(?:y\s+)?(?P<q>cu[áa]nt[oa]s))\s+(?P<resto>[^?¿¡!.,;:]+?)\W*$",
    re.IGNORECASE,
)
_RE_CONTEO_EXISTENCIAL = re.compile(
    r"^\W*(?:y\s+)?(?P<q>cu[áa]nt[oa]s)\s+(?P<ref>[^?¿¡!.,;:]+?)\s+(?:hay|existen)\W*$",
    re.IGNORECASE,
)
_RE_ENTIDAD_ENTRECOMILLAS = re.compile(r"[\"“«](?P<ent>[^\"”»]+)[\"”»]")
_RE_ENTIDAD_CAPITALIZADA = re.compile(
    r"(?<!^)(?<![¿¡.!?:;])\b(?P<ent>[A-ZÁÉÍÓÚÑ]\w+(?:\s+[A-ZÁÉÍÓÚÑ]\w+)+)\b"
)
_RE_COORDINACION_ENTIDAD_SIMPLE_IZQ = re.compile(
    r"(?<!^)(?<![¿¡.!?:;])\b(?P<simple>[A-ZÁÉÍÓÚÑ]\w+)\s+(?:y|e|o|u)\s+(?:(?:de|del)\s+)?(?:[\"“«][^\"”»]+[\"”»]|[A-ZÁÉÍÓÚÑ]\w+(?:\s+[A-ZÁÉÍÓÚÑ]\w+)+)\b"
)
_RE_COORDINACION_ENTIDAD_SIMPLE_DER = re.compile(
    r"(?:[\"“«][^\"”»]+[\"”»]|(?<!^)(?<![¿¡.!?:;])\b[A-ZÁÉÍÓÚÑ]\w+(?:\s+[A-ZÁÉÍÓÚÑ]\w+)+)\s+(?:y|e|o|u)\s+(?:(?:de|del)\s+)?(?P<simple>[A-ZÁÉÍÓÚÑ]\w+)\b"
)


@dataclass(frozen=True)
class _CandidatoPlural:
    genero: Genero
    nucleo: str
    expresion: str


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
        patrones_activos = self._detectar_patrones_explicitos(pregunta)
        if patrones_activos:
            return self._resolver_referencias_explicitas(
                pregunta, historial, patrones_activos
            )

        # Etapa 2: Heurística de respaldo (solo si no hubo referencias explícitas)
        return self._resolver_dependencia_implicita(pregunta, historial)

    @classmethod
    def _detectar_patrones_explicitos(
        cls, pregunta: str
    ) -> list[PatronReferenciaExplicita]:
        activos: list[PatronReferenciaExplicita] = []
        for patron in PATRONES_REFERENCIA_EXPLICITA:
            if patron.tipo in ("plural_partitivo", "plural_pronominal"):
                if any(
                    cls._es_uso_pronominal(m)
                    for m in patron.expresion.finditer(pregunta)
                ):
                    activos.append(patron)
            elif patron.expresion.search(pregunta):
                activos.append(patron)
        return activos

    @classmethod
    def _es_uso_pronominal(cls, coincidencia: re.Match[str]) -> bool:
        pronombre = coincidencia["p"].lower()
        siguiente_raw = coincidencia.groupdict().get("sig")
        if not siguiente_raw or pronombre in ("ellas", "ellos"):
            return True

        siguiente = siguiente_raw.strip().lower()
        if siguiente in (
            _PARTICULAS_PREVERBALES | _PREPOSICIONES_SINTAGMA | _CONJUNCIONES
        ):
            return True
        return cls._es_verbo_conjugado_plural(siguiente)

    def _resolver_referencias_explicitas(
        self,
        pregunta: str,
        historial: list[str],
        patrones_activos: list[PatronReferenciaExplicita],
    ) -> ResultadoResolucion:
        resuelta = pregunta
        tipos_activos = {p.tipo for p in patrones_activos}

        if "plural_partitivo" in tipos_activos or "plural_pronominal" in tipos_activos:
            matches_pronominales = [
                m
                for m in _PATRON_PRONOMBRE_PLURAL.expresion.finditer(resuelta)
                if self._es_uso_pronominal(m)
            ]
            if not matches_pronominales:
                return self._sin_cambios(pregunta)

            generos = {self._genero_palabra(m["p"]) for m in matches_pronominales}
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
                    f"{m['sig'] or ''}"
                    if self._es_uso_pronominal(m)
                    else m.group(0)
                ),
                resuelta,
            )
            resuelta = _PATRON_PRONOMBRE_PLURAL.expresion.sub(
                lambda m: (
                    f"{self._articulo(m['p'])} "
                    f"{referentes_por_genero[self._genero_palabra(m['p'])]}"
                    f"{m['sig'] or ''}"
                    if self._es_uso_pronominal(m)
                    else m.group(0)
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
        coincidencia = _RE_ENCABEZADO_CUANTIFICADO.match(pregunta)
        if coincidencia is None:
            return self._sin_cambios(pregunta)

        resto = coincidencia["resto"].strip()
        if not self._inicia_con_predicado_verbal_plural(resto):
            return self._sin_cambios(pregunta)

        genero = self._genero_palabra(coincidencia["q"])
        referente = self._buscar_referente_plural(historial, genero)
        if referente is None:
            return self._sin_cambios(pregunta)

        prefijo = coincidencia["prefijo"]
        sufijo_puntuacion = pregunta[coincidencia.end("resto") :]
        resuelta = f"{prefijo} {referente} {resto}{sufijo_puntuacion}"
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
        candidatos = [
            info
            for pregunta_previa in historial
            if (info := self._extraer_candidato_plural(pregunta_previa)) is not None
            and info.genero == genero_buscado
        ]
        if not candidatos or len({c.nucleo for c in candidatos}) != 1:
            return None

        # Validar cadena consistente: repetición exacta o refinamiento sobre el núcleo base
        actual = candidatos[0]
        for siguiente in candidatos[1:]:
            norm_actual = self._normalizar_espacios(actual.expresion)
            norm_sig = self._normalizar_espacios(siguiente.expresion)
            if norm_sig == norm_actual or (
                norm_actual == actual.nucleo
                and norm_sig.startswith(actual.nucleo + " ")
            ):
                actual = siguiente
            else:
                return None

        return actual.expresion

    def _buscar_entidad_nombrada(self, historial: list[str]) -> str | None:
        candidatos: list[str] = []

        for pregunta_previa in reversed(historial):
            entidades = self._entidades_nombradas(pregunta_previa)
            if len(entidades) > 1:
                return None
            if len(entidades) == 1:
                candidatos.append(entidades[0])

        if not candidatos:
            return None

        if len({self._normalizar_espacios(c) for c in candidatos}) != 1:
            return None

        return candidatos[0]

    @classmethod
    def _extraer_candidato_plural(cls, anterior: str) -> _CandidatoPlural | None:
        coincidencia_existencial = _RE_CONTEO_EXISTENCIAL.match(anterior)
        if coincidencia_existencial is not None:
            referente = coincidencia_existencial["ref"].strip()
            if not cls._sintagma_plural_valido(referente):
                return None
            genero = cls._genero_palabra(coincidencia_existencial["q"])
            nucleo = referente.split()[0].lower()
            return _CandidatoPlural(genero=genero, nucleo=nucleo, expresion=referente)

        coincidencia_cuant = _RE_ENCABEZADO_CUANTIFICADO.match(anterior)
        if coincidencia_cuant is not None:
            resto = coincidencia_cuant["resto"].strip()
            separacion = cls._separar_sujeto_y_predicado_plural(resto)
            if separacion is not None:
                sujeto, predicado = separacion
                if cls._sintagma_plural_valido(sujeto):
                    genero = cls._genero_palabra(coincidencia_cuant["q"])
                    nucleo = sujeto.split()[0].lower()
                    return _CandidatoPlural(
                        genero=genero,
                        nucleo=nucleo,
                        expresion=f"{sujeto} que {predicado}",
                    )

        return None

    @classmethod
    def _inicia_con_predicado_verbal_plural(cls, texto: str) -> bool:
        tokens = texto.split()
        idx = 0
        while idx < len(tokens) and tokens[idx].lower() in _PARTICULAS_PREVERBALES:
            idx += 1
        return idx < len(tokens) and cls._es_verbo_conjugado_plural(tokens[idx])

    @classmethod
    def _separar_sujeto_y_predicado_plural(
        cls, resto: str
    ) -> tuple[str, str] | None:
        tokens = resto.split()
        for i in range(1, len(tokens)):
            previo = tokens[i - 1].lower().strip("?¿¡!.,;:")
            if previo in (_PREPOSICIONES_SINTAGMA | _CONJUNCIONES):
                continue
            if cls._inicia_con_predicado_verbal_plural(" ".join(tokens[i:])):
                return " ".join(tokens[:i]), " ".join(tokens[i:])
        return None

    @staticmethod
    def _es_verbo_conjugado_plural(token: str) -> bool:
        sin_puntuacion = token.strip("?¿¡!.,;:")
        if not sin_puntuacion or sin_puntuacion[0].isupper():
            return False

        limpio = sin_puntuacion.lower()
        if limpio in {"hay", "existen"}:
            return False
        if limpio in _VERBOS_PLURAL_CORTOS_O_IRREGULARES:
            return True
        if any(limpio.endswith(suf) for suf in _SUFIJOS_NOMINALES_EN_N):
            return False
        if limpio.endswith(("aron", "ieron", "eron")) and len(limpio) >= 5:
            return True
        if limpio.endswith("án") and len(limpio) >= 4:
            return True
        if (limpio.endswith("an") and len(limpio) >= 4) or (
            limpio.endswith("en") and len(limpio) >= 5
        ):
            raiz = limpio[:-2]
            return bool(re.search(r"[aeoáéíóú]|[iu][^aeiouáéíóú]", raiz))
        return False

    @staticmethod
    def _sintagma_plural_valido(referente: str) -> bool:
        tokens = [t.lower() for t in referente.split()]
        if not tokens or any(t in _INTERROGATIVOS for t in tokens):
            return False
        if re.search(
            rf"\b({_DEMOSTRATIVOS_Y_PRONOMBRES})\b", referente, re.IGNORECASE
        ):
            return False
        for idx, tok in enumerate(tokens):
            if tok in _CONJUNCIONES and (idx == 1 or idx + 2 < len(tokens)):
                return False
        return True

    @staticmethod
    def _entidades_nombradas(anterior: str) -> list[str]:
        entidades: list[str] = [
            m["ent"].strip() for m in _RE_ENTIDAD_ENTRECOMILLAS.finditer(anterior)
        ]
        sin_comillas = _RE_ENTIDAD_ENTRECOMILLAS.sub(" ", anterior)
        entidades.extend(
            m["ent"].strip() for m in _RE_ENTIDAD_CAPITALIZADA.finditer(sin_comillas)
        )
        for patron_coord in (
            _RE_COORDINACION_ENTIDAD_SIMPLE_IZQ,
            _RE_COORDINACION_ENTIDAD_SIMPLE_DER,
        ):
            for coincidencia in patron_coord.finditer(anterior):
                simple = coincidencia["simple"].strip()
                if simple not in entidades:
                    entidades.append(simple)
        return entidades




