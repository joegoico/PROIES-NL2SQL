from abc import ABC, abstractmethod
import re
import unicodedata

from langchain_classic.chains import Any



PESO_NOMBRE_TABLA = 5
PESO_DESCRIPCION_TABLA = 4
PESO_NOMBRE_COLUMNA = 3
PESO_DESCRIPCION_COLUMNA = 2
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

class ScoreCalculator(ABC):
    @abstractmethod
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        pass

class CalcularScoreNombreTabla(ScoreCalculator):
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        # Nombre tabla
        nombre = tabla.get("nombre_real", "")
        tokens_nombre = normalizar_texto(nombre)
        return len(tokens_pregunta & tokens_nombre) * PESO_NOMBRE_TABLA

class CalcualrScoreDescripcionTabla(ScoreCalculator):
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        # Descripción tabla
        descripcion = tabla.get("descripcion_tabla", "")
        tokens_descripcion = normalizar_texto(descripcion)
        return len(tokens_pregunta & tokens_descripcion) * PESO_DESCRIPCION_TABLA

class CalcularScoreNombreColumna(ScoreCalculator):
    def calcular_score(self, tokens_pregunta: set[str], tabla: dict[str, Any]) -> int:
        columnas = tabla.get("columnas", {})
        score = 0
        for col in columnas.keys():

            tokens_col = normalizar_texto(col)
            score += len(tokens_pregunta & tokens_col) * PESO_NOMBRE_COLUMNA
        
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

                print("INTERSECCION:", interseccion)

                score_parcial = (
                    len(interseccion)
                    * PESO_DESCRIPCION_COLUMNA
                )


                score += score_parcial


            return score