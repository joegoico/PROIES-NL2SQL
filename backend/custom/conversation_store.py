"""
backend/custom/conversation_store.py
─────────────────────────────────────────────────────────────────────────────
Historial conversacional temporal, en memoria.

Guarda las últimas N preguntas por conversación (10 por defecto). El estado
se pierde al reiniciar el proceso y no se comparte entre workers de Uvicorn.

Es el único componente con estado del flujo conversacional: debe vivir como
singleton en app.state. Las operaciones están protegidas con threading.Lock
porque los endpoints síncronos de FastAPI corren en un threadpool.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import threading
from collections import deque


class ConversationStore:
    """
    Almacén en memoria de las últimas preguntas de cada conversación.

    Atributos:
        max_preguntas: Cantidad máxima de preguntas retenidas por conversación.
            Al superarla se descartan las más antiguas.
    """

    def __init__(self, max_preguntas: int = 10) -> None:
        """
        Args:
            max_preguntas: Límite de preguntas por conversación (>= 1).

        Raises:
            ValueError: Si max_preguntas es menor que 1.
        """
        if max_preguntas < 1:
            raise ValueError("max_preguntas debe ser mayor o igual a 1.")

        self.max_preguntas: int = max_preguntas
        self._conversaciones: dict[str, deque[str]] = {}
        self._lock = threading.Lock()

    def agregar_pregunta(self, conversation_id: str, pregunta: str) -> None:
        """
        Agrega una pregunta al historial de la conversación.

        Raises:
            ValueError: Si conversation_id o pregunta están vacíos o son None.
        """
        if not conversation_id or not conversation_id.strip():
            raise ValueError("conversation_id no puede estar vacío.")
        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        with self._lock:
            historial = self._conversaciones.setdefault(
                conversation_id,
                deque(maxlen=self.max_preguntas),
            )
            historial.append(pregunta)

    def obtener_historial(self, conversation_id: str) -> list[str]:
        """
        Retorna una copia del historial en orden cronológico.

        Devuelve una lista vacía si la conversación no existe.
        """
        with self._lock:
            return list(self._conversaciones.get(conversation_id, ()))
