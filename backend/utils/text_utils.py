import re
import unicodedata

from rapidfuzz import fuzz

class TextUtils:
    def __init__(self):
        self._STOPWORDS = {
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
            "son",
            "es",
            "en",
            "para",
            "con",
            "a",
            "por",
            "un",
            "una",
            "unos",
            "unas",
            "del",
            "x",
        }
        self.RELATION_PATTERNS = (
            "_por_",
            "_x_",
            "_relacionada",
        )
        self.UMBRAL_SIMILITUD = 85

    def _es_tabla_relacion(
        self,
        nombre_tabla: str,
    ) -> bool:
        """
        Determina si la tabla representa una relación entre entidades
        según convenciones de nomenclatura del esquema.
        """

        nombre = nombre_tabla.lower()

        return any(
            patron in nombre
            for patron in self.RELATION_PATTERNS
            )
    def _normalizar_token(self, token: str) -> str:
        token = token.strip().lower()

        token = unicodedata.normalize("NFD", token)
        token = token.encode("ascii", "ignore").decode("utf-8")

        if len(token) > 6 and token.endswith("ciones"):
            token = token[:-6] + "cion"

        elif len(token) > 5 and token.endswith("dades"):
            token = token[:-5] + "dad"

        elif len(token) > 3 and token.endswith("s"):
            token = token[:-1]

        return token


    def normalizar_texto(self, texto: str) -> set[str]:
        """
        Normaliza texto:
        - lowercase
        - elimina acentos
        - separa underscores
        - elimina puntuación
        - tokeniza
        - aplica una normalización simple de singular/plural
        """

        texto = texto.lower()
        texto = texto.replace("_", " ")

        texto = unicodedata.normalize("NFD", texto)
        texto = texto.encode("ascii", "ignore").decode("utf-8")

        texto = re.sub(r"[^\w\s]", " ", texto)

        tokens = texto.split()

        return {
            self._normalizar_token(token)
            for token in tokens
            if token not in self._STOPWORDS
        }

    def son_similares(self, token1: str, token2: str) -> bool:
        """
        Devuelve True si dos tokens son suficientemente parecidos.

        Ejemplos:
            organizacion <-> organización
            organizacion <-> organizacin
            auditoria <-> auditorías
        """
        return fuzz.ratio(token1, token2)

    def contar_matches(
        self,
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

                if self.son_similares(token_pregunta, token_tabla) >= self.UMBRAL_SIMILITUD:
                    matches += 1
                    break
        return matches