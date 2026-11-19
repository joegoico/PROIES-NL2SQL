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
            "_org",
        )
        self._NON_RELATION_ORG_TABLES = {
            "trabajadores_org",
            "forma_plan_eval_org",
            "telefono_org",
            "email_org",
        }
        self.UMBRAL_SIMILITUD = 85

    def _es_tabla_relacion(
        self,
        nombre_tabla: str,
    ) -> bool:
        """Determina si la tabla representa una tabla puente o de relación entre entidades.

        Reconoce los patrones de nomenclatura de tablas intermedias (`_por_`, `_x_`,
        `_relacionada` y sufijo `_org` del esquema ObSoC v2.4), excluyendo explícitamente
        las tablas de entidad o atributos directos que terminan en `_org` (`trabajadores_org`,
        `forma_plan_eval_org`, `telefono_org`, `email_org`).

        Args:
            nombre_tabla (str): Nombre real de la tabla en el esquema.

        Returns:
            bool: `True` si corresponde a una tabla de relación/puente; `False` en caso contrario.
        """
        nombre = nombre_tabla.strip().lower()
        if nombre in self._NON_RELATION_ORG_TABLES:
            return False

        return any(
            patron in nombre
            for patron in self.RELATION_PATTERNS
        )


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
            token
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