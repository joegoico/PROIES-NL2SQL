from abc import ABC, abstractmethod
from rapidfuzz import fuzz

from langchain_classic.chains import Any

from backend.utils.text_utils import TextUtils

UMBRAL_SIMILITUD = 85
FACTOR_PENALIZACION_TABLA_RELACION = 0.70
BONUS_MATCH_EXACTO_NOMBRE_TABLA = 15
BONUS_MATCH_EXACTO_DESCRIPCION_TABLA = 8
BONUS_MATCH_EXACTO_NOMBRE_COLUMNA = 4
BONUS_MATCH_EXACTO_DESCRIPCION_COLUMNA = 2
PESO_NOMBRE_TABLA = 10
PESO_DESCRIPCION_TABLA = 5
PESO_NOMBRE_COLUMNA = 2
PESO_DESCRIPCION_COLUMNA = 1
class ScoreCalculator(ABC):
    def __init__(self):
        self.text_utils = TextUtils()
    @abstractmethod
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        pass
   


class CalcularScoreNombreTabla(ScoreCalculator):
    def calcular_score(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
    ) -> int:
        """Calcula el puntaje léxico del nombre real de la tabla frente a la pregunta.

        Cada token relevante del nombre de la tabla se contabiliza como máximo una vez.
        Otorga un bonus adicional cuando todos los tokens del nombre de la tabla están
        cubiertos por la pregunta y aplica una penalización si es una tabla de relación.

        Args:
            tokens_pregunta: Conjunto de tokens normalizados de la pregunta del usuario.
            tabla: Diccionario con la definición de la tabla del esquema maestro.

        Returns:
            Puntaje calculado para el nombre de la tabla.
        """
        nombre = tabla.get("nombre_real", "")
        tokens_nombre = self.text_utils.normalizar_texto(nombre)

        # Cada token del nombre de la tabla se contabiliza una única vez aunque
        # múltiples variantes morfológicas de la pregunta coincidan con él.
        matches = self.text_utils.contar_matches(tokens_nombre, tokens_pregunta)
        score = matches * PESO_NOMBRE_TABLA

        # Bonus sólo si todos los tokens relevantes del nombre están cubiertos
        if tokens_nombre and matches == len(tokens_nombre):
            score += BONUS_MATCH_EXACTO_NOMBRE_TABLA
        if (self.text_utils._es_tabla_relacion(nombre) and score > 0):
            score = (score * FACTOR_PENALIZACION_TABLA_RELACION)
        return score
class CalcualrScoreDescripcionTabla(ScoreCalculator):

    def calcular_score(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
    ) -> int:

        descripcion = tabla.get("descripcion_tabla", "")
        tokens_descripcion = self.text_utils.normalizar_texto(descripcion)

        matches = self.text_utils.contar_matches(
            tokens_pregunta,
            tokens_descripcion,
        )

        score = matches * PESO_DESCRIPCION_TABLA

        if (
            tokens_descripcion
            and matches == len(tokens_descripcion)
        ):
            score += BONUS_MATCH_EXACTO_DESCRIPCION_TABLA

        return score

class CalcularScoreNombreColumna(ScoreCalculator):

    def calcular_score(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
    ) -> int:
        """Calcula el puntaje léxico de los nombres de columnas deduplicando por token.

        Acumula las coincidencias sobre el conjunto unificado de tokens de los nombres
        de columnas de la tabla, de modo que un mismo token de la pregunta aporte como
        máximo una coincidencia base, conservando el bonus por coincidencia exacta de
        cada columna individual.

        Args:
            tokens_pregunta: Conjunto de tokens normalizados de la pregunta del usuario.
            tabla: Diccionario con la definición de la tabla y sus columnas.

        Returns:
            Puntaje entero acumulado para los nombres de columnas de la tabla.
        """
        columnas = tabla.get("columnas", {})
        score = 0
        tokens_todas_columnas: set[str] = set()

        for nombre_columna in columnas.keys():

            tokens_columna = self.text_utils.normalizar_texto(nombre_columna)
            tokens_todas_columnas.update(tokens_columna)

            matches_columna = self.text_utils.contar_matches(
                tokens_pregunta,
                tokens_columna,
            )

            if (
                tokens_columna
                and matches_columna == len(tokens_columna)
            ):
                score += BONUS_MATCH_EXACTO_NOMBRE_COLUMNA

        # Deduplicación sobre el conjunto de nombres de columna de la tabla:
        # cada token de la pregunta aporta como máximo una coincidencia.
        matches_deduplicados = self.text_utils.contar_matches(
            tokens_pregunta,
            tokens_todas_columnas,
        )
        score += matches_deduplicados * PESO_NOMBRE_COLUMNA

        return score
class CalcularScoreDescripcionColumna(ScoreCalculator):

    def calcular_score(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
    ) -> int:

        columnas = tabla.get("columnas", {})
        score = 0

        for comentario in columnas.values():

            tokens_comentario = self.text_utils.normalizar_texto(comentario)

            matches = self.text_utils.contar_matches(
                tokens_pregunta,
                tokens_comentario,
            )

            score += matches * PESO_DESCRIPCION_COLUMNA

            if (
                tokens_comentario
                and matches == len(tokens_comentario)
            ):
                score += BONUS_MATCH_EXACTO_DESCRIPCION_COLUMNA

        return score