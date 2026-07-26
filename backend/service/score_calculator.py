from abc import ABC, abstractmethod
import re
import unicodedata
from rapidfuzz import fuzz

from langchain_classic.chains import Any


UMBRAL_SIMILITUD = 85
_BONUS_MATCH_EXACTO = 2
PESO_NOMBRE_TABLA = 10
PESO_DESCRIPCION_TABLA = 5
PESO_NOMBRE_COLUMNA = 2
PESO_DESCRIPCION_COLUMNA = 1
_STOPWORDS = {
    "de",
    "la",
    "las",
    "el",
    "los",
    "y",
    "o",
    "que",
    "hay",
    "cuales",
    "cuantas",
    "cuantos",
}

def normalizar_texto(texto: str) -> set[str]:
    """
    Normaliza texto:
    - lowercase
    - elimina acentos
    - elimina puntuación
    - tokeniza
    """

    texto = texto.lower()

    texto = unicodedata.normalize("NFD", texto)
    texto = texto.encode("ascii", "ignore").decode("utf-8")

    texto = re.sub(r"[^\w\s]", " ", texto)

    tokens = texto.split()

    return {
        token
        for token in tokens
        if token not in _STOPWORDS
    }

def son_similares(token1: str, token2: str) -> bool:
    """
    Devuelve True si dos tokens son suficientemente parecidos.

    Ejemplos:
        organizacion <-> organización
        organizacion <-> organizacin
        auditoria <-> auditorías
    """
    return fuzz.ratio(token1, token2)

def contar_matches(
    tokens_pregunta: set[str],
    tokens_tabla: set[str],
) -> int:
    """
    Cuenta cuántos tokens de la pregunta matchean con los de la tabla,
    permitiendo errores tipográficos.
    """

    matches = 0

    for token_pregunta in tokens_pregunta:
        for token_tabla in tokens_tabla:

            if son_similares(token_pregunta, token_tabla)>= UMBRAL_SIMILITUD:
                matches += 1
                break
    return matches
class ScoreCalculator(ABC):
    @abstractmethod
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        pass

class CalcularScoreNombreTabla(ScoreCalculator):
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        nombre = tabla["nombre_real"]

        tokens_nombre = normalizar_texto(nombre)

        interseccion = tokens_pregunta & tokens_nombre

        score = len(interseccion) * PESO_NOMBRE_TABLA

        if tokens_nombre == interseccion:
            score += BONUS_MATCH_EXACTO
        return score

class CalcualrScoreDescripcionTabla(ScoreCalculator):
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        # Descripción tabla
        descripcion = tabla.get("descripcion_tabla", "")
        tokens_descripcion = normalizar_texto(descripcion)
        matches = contar_matches(
            tokens_pregunta,
            tokens_descripcion,
        )
        return matches * PESO_DESCRIPCION_TABLA

class CalcularScoreNombreColumna(ScoreCalculator):
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        columnas = tabla.get("columnas", {})
        score = 0
        for col in columnas.keys():

            tokens_col = normalizar_texto(col)
            score += (
                contar_matches(tokens_pregunta, tokens_col)
                * PESO_NOMBRE_COLUMNA
            )

        
        return score
class CalcularScoreDescripcionColumna(ScoreCalculator):
        def calcular_score(
            self,
            tokens_pregunta: set[str],
            tabla: dict[str, Any],
        ) -> int:

            columnas = tabla.get("columnas", {})
            score = 0

            print("\nTOKENS PREGUNTA:", tokens_pregunta)

            for nombre_columna, comentario in columnas.items():

                print("\nCOLUMNA:", nombre_columna)
                print("COMENTARIO ORIGINAL:", comentario)

                tokens_comentario = normalizar_texto(comentario)

                print("TOKENS COMENTARIO:", tokens_comentario)

                interseccion = tokens_pregunta & tokens_comentario


                score += (
                    contar_matches(tokens_pregunta, tokens_comentario)
                    * PESO_DESCRIPCION_COLUMNA
                )


            return score