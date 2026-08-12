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
        print("\nTOKENS PREGUNTA:", tokens_pregunta)
        nombre = tabla.get("nombre_real", "")
        tokens_nombre = self.text_utils.normalizar_texto(nombre)
        print("TOKENS NOMBRE TABLA:", tokens_nombre)

        matches = self.text_utils.contar_matches(tokens_pregunta, tokens_nombre)
        score = matches * PESO_NOMBRE_TABLA

        # Bonus sólo si todos los tokens del nombre aparecen en la pregunta
        # de forma exacta normalizada
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

        columnas = tabla.get("columnas", {})
        score = 0

        for nombre_columna in columnas.keys():

            tokens_columna = self.text_utils.normalizar_texto(nombre_columna)

            matches = self.text_utils.contar_matches(
                tokens_pregunta,
                tokens_columna,
            )

            score += matches * PESO_NOMBRE_COLUMNA

            if (
                tokens_columna
                and matches == len(tokens_columna)
            ):
                score += BONUS_MATCH_EXACTO_NOMBRE_COLUMNA

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