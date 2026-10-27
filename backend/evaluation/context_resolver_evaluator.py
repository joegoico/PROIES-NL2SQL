"""
backend/evaluation/context_resolver_evaluator.py
─────────────────────────────────────────────────────────────────────────────
Evaluador de desempeño y métricas para ContextResolver sobre el dataset
backend/evaluation/context_resolver_cases.json.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

import json
import math
import time
from pathlib import Path
from typing import Any, Literal, Protocol

from backend.custom.context_resolver import ContextResolver, ResultadoResolucion

SplitType = Literal["development", "holdout", "all"]
SPLITS_VALIDOS: frozenset[str] = frozenset({"development", "holdout", "all"})


class ResolverProtocol(Protocol):
    """Contrato mínimo requerido para evaluar una instancia de resolución contextual."""

    def resolver(
        self, pregunta: str, historial: list[str]
    ) -> ResultadoResolucion: ...


def cargar_context_resolver_dataset(path: str | Path) -> dict[str, Any]:
    """
    Carga y valida la estructura principal del archivo JSON de casos de evaluación
    del ContextResolver.

    Args:
        path: Ruta hacia el archivo JSON (por ej. backend/evaluation/context_resolver_cases.json).

    Returns:
        Diccionario con los metadatos del dataset y la lista bajo la clave 'cases'.

    Raises:
        ValueError: Si el JSON no es un objeto con la clave 'cases' o si 'cases' no es una lista.
    """
    ruta = Path(path)
    with ruta.open("r", encoding="utf-8") as archivo:
        data = json.load(archivo)

    if not isinstance(data, dict) or "cases" not in data:
        raise ValueError(
            "El archivo de evaluación debe ser un objeto JSON con la clave 'cases'."
        )
    if not isinstance(data["cases"], list):
        raise ValueError("El campo 'cases' debe ser una lista de casos.")

    return data


def filtrar_casos_por_split(
    casos: list[dict[str, Any]],
    split: SplitType = "all",
) -> list[dict[str, Any]]:
    """
    Filtra la lista de casos según la partición solicitada ('development', 'holdout' o 'all').

    Args:
        casos: Lista completa de casos del dataset.
        split: Nombre del split a seleccionar ('development', 'holdout' o 'all').

    Returns:
        Nueva lista con los casos pertenecientes al split indicado.

    Raises:
        ValueError: Si el parámetro split no pertenece a SPLITS_VALIDOS.
    """
    if split not in SPLITS_VALIDOS:
        raise ValueError(
            f"Split inválido '{split}'. Valores permitidos: {sorted(SPLITS_VALIDOS)}."
        )

    if split == "all":
        return list(casos)

    return [caso for caso in casos if caso.get("split") == split]


def _normalizar_texto_comparacion(texto: str) -> str:
    """
    Normaliza espacios en blanco y convierte a minúsculas para verificar la
    presencia de filtros obligatorios de manera insensible a mayúsculas.

    Args:
        texto: Cadena a normalizar.

    Returns:
        Cadena en minúsculas con espacios colapsados.
    """
    return " ".join(texto.lower().split())


def _calcular_tasa(numerador: int, denominador: int, valor_por_defecto: float) -> float:
    """
    Calcula una proporción segura evitando divisiones por cero cuando el subconjunto
    denominador está vacío.

    Args:
        numerador: Cantidad de casos que cumplen la condición.
        denominador: Total de casos del subconjunto evaluado.
        valor_por_defecto: Valor a retornar cuando denominador == 0 (ej. 1.0 para precisión/cobertura vacía, 0.0 para tasas de error).

    Returns:
        Proporción en punto flotante entre 0.0 y 1.0.
    """
    if denominador == 0:
        return valor_por_defecto
    return numerador / denominador


def _calcular_percentil(valores: list[float], percentil: float) -> float:
    """
    Calcula el percentil indicado mediante interpolación lineal sobre la lista de valores.

    Args:
        valores: Lista de mediciones numéricas (ej. latencias en milisegundos).
        percentil: Percentil buscado en el rango [0.0, 100.0].

    Returns:
        Valor del percentil interpolado, o 0.0 si la lista está vacía.

    Raises:
        ValueError: Si el percentil está fuera del rango [0.0, 100.0].
    """
    if not valores:
        return 0.0
    if not 0.0 <= percentil <= 100.0:
        raise ValueError("El percentil debe estar entre 0 y 100.")

    ordenados = sorted(valores)
    n = len(ordenados)
    if n == 1:
        return ordenados[0]

    # Interpolación lineal estándar entre los índices adyacentes
    posicion = (percentil / 100.0) * (n - 1)
    indice_inferior = math.floor(posicion)
    indice_superior = math.ceil(posicion)
    if indice_inferior == indice_superior:
        return ordenados[indice_inferior]

    peso = posicion - indice_inferior
    return (
        ordenados[indice_inferior] * (1.0 - peso)
        + ordenados[indice_superior] * peso
    )


def evaluar_caso_context_resolver(
    caso: dict[str, Any],
    resolver: ResolverProtocol,
) -> dict[str, Any]:
    """
    Ejecuta el ContextResolver sobre un caso individual del dataset, midiendo su
    latencia de resolución y determinando exactitud de decisión, coincidencia exacta
    (insensible a diferencias de mayúsculas/minúsculas pero estricta en tildes,
    signos de puntuación y palabras), falsos positivos/negativos y conservación
    de filtros obligatorios.

    Args:
        caso: Diccionario con las claves 'id', 'pregunta_actual', 'historial',
            'pregunta_resuelta_esperada', 'uso_contexto_esperado' y 'filtros_obligatorios'.
        resolver: Instancia de ContextResolver (o compatible con ResolverProtocol).

    Returns:
        Diccionario con el diagnóstico detallado y la latencia en milisegundos del caso.
    """
    pregunta_actual = caso["pregunta_actual"]
    historial = list(caso.get("historial", []))
    esperada = caso["pregunta_resuelta_esperada"]
    uso_esperado = bool(caso["uso_contexto_esperado"])
    filtros_obligatorios = list(caso.get("filtros_obligatorios", []))

    inicio = time.perf_counter()
    resultado = resolver.resolver(pregunta_actual, historial)
    latencia_ms = (time.perf_counter() - inicio) * 1000.0

    predicha = resultado.pregunta_resuelta
    uso_predicho = bool(resultado.uso_contexto)

    decision_correcta = uso_predicho == uso_esperado
    # Ignora únicamente diferencias de capitalización conservando tildes, puntuación y palabras
    coincidencia_exacta = predicha.casefold() == esperada.casefold()

    falso_positivo = (not uso_esperado) and uso_predicho
    falso_negativo = uso_esperado and (not uso_predicho)

    predicha_norm = _normalizar_texto_comparacion(predicha)
    filtros_faltantes = [
        filtro
        for filtro in filtros_obligatorios
        if _normalizar_texto_comparacion(filtro) not in predicha_norm
    ]
    perdida_de_filtros = len(filtros_faltantes) > 0

    return {
        "id": caso["id"],
        "split": caso.get("split"),
        "categoria": caso.get("categoria"),
        "historial": historial,
        "pregunta_actual": pregunta_actual,
        "pregunta_resuelta_esperada": esperada,
        "pregunta_resuelta_predicha": predicha,
        "uso_contexto_esperado": uso_esperado,
        "uso_contexto_predicho": uso_predicho,
        "filtros_obligatorios": filtros_obligatorios,
        "filtros_faltantes": filtros_faltantes,
        "decision_correcta": decision_correcta,
        "coincidencia_exacta": coincidencia_exacta,
        "falso_positivo": falso_positivo,
        "falso_negativo": falso_negativo,
        "perdida_de_filtros": perdida_de_filtros,
        "latencia_ms": latencia_ms,
    }


def calcular_metricas_context_resolver(
    resultados: list[dict[str, Any]],
) -> dict[str, Any]:
    """
    Calcula las métricas agregadas de desempeño y latencia (p50 y p95) a partir
    de una lista de resultados individuales de evaluación.

    Args:
        resultados: Lista no vacía de diccionarios generados por evaluar_caso_context_resolver.

    Returns:
        Diccionario con exactitud_decision, coincidencia_exacta,
        precision_resoluciones_aceptadas, cobertura, tasa_abstencion,
        falsos_positivos, tasa_falsos_positivos, falsos_negativos,
        tasa_falsos_negativos, perdida_de_filtros, tasa_perdida_de_filtros,
        latencia_p50_ms y latencia_p95_ms.

    Raises:
        ValueError: Si la lista de resultados está vacía.
    """
    total = len(resultados)
    if total == 0:
        raise ValueError("No hay resultados para calcular métricas.")

    decisiones_correctas = sum(1 for r in resultados if r["decision_correcta"])
    coincidencias_exactas = sum(1 for r in resultados if r["coincidencia_exacta"])

    positivos_esperados = [r for r in resultados if r["uso_contexto_esperado"]]
    negativos_esperados = [r for r in resultados if not r["uso_contexto_esperado"]]
    resoluciones_aceptadas = [r for r in resultados if r["uso_contexto_predicho"]]
    abstenciones = [r for r in resultados if not r["uso_contexto_predicho"]]
    casos_con_filtros = [
        r for r in resultados if len(r.get("filtros_obligatorios", [])) > 0
    ]

    falsos_positivos_count = sum(1 for r in resultados if r["falso_positivo"])
    falsos_negativos_count = sum(1 for r in resultados if r["falso_negativo"])
    perdida_de_filtros_count = sum(
        1 for r in casos_con_filtros if r["perdida_de_filtros"]
    )

    resoluciones_correctas_count = sum(
        1
        for r in resoluciones_aceptadas
        if r["uso_contexto_esperado"] and r["coincidencia_exacta"]
    )
    positivos_cubiertos_count = sum(
        1
        for r in positivos_esperados
        if r["uso_contexto_predicho"] and r["coincidencia_exacta"]
    )

    latencias = [float(r["latencia_ms"]) for r in resultados]

    return {
        "total_casos": total,
        "exactitud_decision": _calcular_tasa(decisiones_correctas, total, 0.0),
        "coincidencia_exacta": _calcular_tasa(coincidencias_exactas, total, 0.0),
        "precision_resoluciones_aceptadas": _calcular_tasa(
            resoluciones_correctas_count, len(resoluciones_aceptadas), 1.0
        ),
        "cobertura": _calcular_tasa(
            positivos_cubiertos_count, len(positivos_esperados), 1.0
        ),
        "tasa_abstencion": _calcular_tasa(len(abstenciones), total, 0.0),
        "falsos_positivos": falsos_positivos_count,
        "tasa_falsos_positivos": _calcular_tasa(
            falsos_positivos_count, len(negativos_esperados), 0.0
        ),
        "falsos_negativos": falsos_negativos_count,
        "tasa_falsos_negativos": _calcular_tasa(
            falsos_negativos_count, len(positivos_esperados), 0.0
        ),
        "perdida_de_filtros": perdida_de_filtros_count,
        "tasa_perdida_de_filtros": _calcular_tasa(
            perdida_de_filtros_count, len(casos_con_filtros), 0.0
        ),
        "latencia_p50_ms": _calcular_percentil(latencias, 50.0),
        "latencia_p95_ms": _calcular_percentil(latencias, 95.0),
    }


def ejecutar_context_resolver_benchmark(
    dataset: dict[str, Any] | list[dict[str, Any]],
    resolver: ResolverProtocol | None = None,
    split: SplitType = "all",
) -> dict[str, Any]:
    """
    Filtra el dataset por el split seleccionado, evalúa cada caso con el
    ContextResolver y retorna las métricas agregadas junto al detalle por caso.

    Args:
        dataset: Diccionario completo cargado desde el JSON (con clave 'cases') o lista de casos.
        resolver: Instancia de ContextResolver a evaluar. Si es None, instancia ContextResolver().
        split: Partición a evaluar ('development', 'holdout' o 'all').

    Returns:
        Diccionario con el split evaluado, todas las métricas agregadas y la lista 'casos'.

    Raises:
        ValueError: Si el split es inválido o si no existen casos para el split seleccionado.
    """
    casos_totales = (
        dataset["cases"] if isinstance(dataset, dict) else list(dataset)
    )
    casos_filtrados = filtrar_casos_por_split(casos_totales, split=split)
    if not casos_filtrados:
        raise ValueError(f"No hay casos evaluables para el split '{split}'.")

    instancia_resolver = resolver if resolver is not None else ContextResolver()

    resultados_casos = [
        evaluar_caso_context_resolver(caso=caso, resolver=instancia_resolver)
        for caso in casos_filtrados
    ]
    metricas = calcular_metricas_context_resolver(resultados_casos)

    return {
        "split": split,
        **metricas,
        "casos": resultados_casos,
    }
