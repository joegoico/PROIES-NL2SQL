from __future__ import annotations

from typing import Any

from backend.service.score_calculator import ScoreCalculator, CalcularScoreNombreTabla, CalcualrScoreDescripcionTabla, CalcularScoreNombreColumna

from backend.utils.text_utils import TextUtils
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
        self.text_utils = TextUtils()
    
    def obtener_indices(
        self,
        pregunta: str,
        esquema_maestro: dict[str, Any],
        top_k: int = 10,
    ) -> list[str]:
        """
        Retorna los índices de tablas más relevantes para la pregunta.
        """

        ranking = self.obtener_ranking(
            pregunta=pregunta,
            esquema_maestro=esquema_maestro,
        )

        return [
            indice
            for indice, _ in ranking[:top_k]
        ]

    def _calcular_score_tabla(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
        debug: bool = False,
    ) -> float:
        score_total = 0

        if debug:
            print(f"\nTabla: {tabla['nombre_real']}")

        for calculator in self.score_calculators:
            score = calculator.calcular_score(
                tokens_pregunta,
                tabla,
            )

            if debug:
                print(
                    f"{calculator.__class__.__name__:35} -> {score}"
                )

            score_total += score

        if debug:
            print(f"TOTAL{'':31} -> {score_total}")

        return score_total

    def obtener_ranking(
        self,
        pregunta: str,
        esquema_maestro: dict[str, Any],
    ) -> list[tuple[str, float]]:
        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        if not esquema_maestro:
            raise ValueError("El esquema_maestro no puede estar vacío.")

        tokens_pregunta = self.text_utils.normalizar_texto(
            pregunta
        )

        scores: list[tuple[str, float]] = []

        for indice, tabla in esquema_maestro.items():
            score = self._calcular_score_tabla(
                tokens_pregunta=tokens_pregunta,
                tabla=tabla,
            )

            if score > 0:
                scores.append((indice, score))

        scores.sort(
            key=lambda x: x[1],
            reverse=True,
        )

        return scores