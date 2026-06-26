from __future__ import annotations

from typing import Any

from backend.service.score_calculator import ScoreCalculator, CalcularScoreNombreTabla, CalcualrScoreDescripcionTabla, CalcularScoreNombreColumna,normalizar_texto

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

            print(
                indice,
                tabla.get("nombre_real"),
                score,
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

