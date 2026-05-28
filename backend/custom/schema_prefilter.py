from __future__ import annotations
from abc import ABC, abstractmethod

import unicodedata
import re

from typing import Any

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
        for col, comentario in columnas.items():

            tokens_col = normalizar_texto(col)
            score += len(tokens_pregunta & tokens_col) * PESO_NOMBRE_COLUMNA

            tokens_comentario = normalizar_texto(comentario)
            score += len(tokens_pregunta & tokens_comentario) * PESO_DESCRIPCION_COLUMNA
        
        return score

class SchemaPrefilter:
    """
    Pre-filtra tablas relevantes antes de invocar el SLM router.

    Objetivo:
        Reducir el tamaño del catálogo enviado al modelo.
    """
    def __init__(self):
        # INYECTADO: Inicialización de la lista de calculadores
        self.score_calculators: list[ScoreCalculator] = [
            CalcularScoreNombreTabla(),
            CalcualrScoreDescripcionTabla(),
            CalcularScoreNombreColumna()
        ]
    
    def obtener_indices(
        self,
        pregunta: str,
        esquema_maestro: dict[str, Any],
        top_k: int = 10,
    ) -> list[str]:
        """
        Retorna los índices de tablas más relevantes para la pregunta.
        """

        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        if not esquema_maestro:
            raise ValueError("El esquema_maestro no puede estar vacío.")

        tokens_pregunta = normalizar_texto(pregunta)

        scores: list[tuple[str, int]] = []

        for indice, tabla in esquema_maestro.items():

            score = self._calcular_score_tabla(
                tokens_pregunta=tokens_pregunta,
                tabla=tabla,
            )

            if score > 0:
                scores.append((indice, score))

        scores.sort(key=lambda x: x[1], reverse=True)

        return [indice for indice, _ in scores[:top_k]]

    def _calcular_score_tabla(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
    ) -> int:
        """
        Calcula relevancia léxica de una tabla.
        """

        score_total = sum(
            calculator.calcular_score(tokens_pregunta,tabla)
            for calculator in self.score_calculators
        )

        return score_total

