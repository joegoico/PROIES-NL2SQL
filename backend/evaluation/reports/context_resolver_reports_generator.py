"""
backend/evaluation/reports/context_resolver_reports_generator.py
─────────────────────────────────────────────────────────────────────────────
Generador de reportes en formato Markdown para la evaluación de ContextResolver.
─────────────────────────────────────────────────────────────────────────────
"""

from __future__ import annotations

from pathlib import Path
from typing import Any


def obtener_discrepancias_context_resolver(
    resultados_casos: list[dict[str, Any]],
) -> list[dict[str, Any]]:
    """
    Filtra los casos evaluados que presentan alguna discrepancia respecto
    al resultado esperado (decisión, coincidencia exacta o pérdida de filtros).

    Args:
        resultados_casos: Lista de diccionarios devueltos por evaluar_caso_context_resolver.

    Returns:
        Lista de casos donde falló la decisión, la coincidencia exacta o se perdieron filtros.
    """
    return [
        caso
        for caso in resultados_casos
        if not (
            caso["decision_correcta"]
            and caso["coincidencia_exacta"]
            and not caso["perdida_de_filtros"]
        )
    ]


def generar_reporte_context_resolver_markdown(
    resultado: dict[str, Any],
) -> str:
    """
    Construye un reporte en formato Markdown con el resumen de métricas,
    latencias p50/p95 y el detalle de discrepancias por caso.

    Args:
        resultado: Diccionario retornado por ejecutar_context_resolver_benchmark.

    Returns:
        Cadena con el reporte formateado en Markdown.
    """
    lineas: list[str] = [
        "# Benchmark ContextResolver",
        "",
        "## Resumen",
        "",
        f"- Split: `{resultado['split']}`",
        f"- Casos evaluados: {resultado['total_casos']}",
        f"- Exactitud de decisión: {resultado['exactitud_decision']:.4f}",
        f"- Coincidencia exacta: {resultado['coincidencia_exacta']:.4f}",
        f"- Precisión de resoluciones aceptadas: {resultado['precision_resoluciones_aceptadas']:.4f}",
        f"- Cobertura: {resultado['cobertura']:.4f}",
        f"- Tasa de abstención: {resultado['tasa_abstencion']:.4f}",
        f"- Falsos positivos: {resultado['falsos_positivos']} ({resultado['tasa_falsos_positivos']:.4f})",
        f"- Falsos negativos: {resultado['falsos_negativos']} ({resultado['tasa_falsos_negativos']:.4f})",
        f"- Pérdida de filtros: {resultado['perdida_de_filtros']} ({resultado['tasa_perdida_de_filtros']:.4f})",
        f"- Latencia p50 (ms): {resultado['latencia_p50_ms']:.4f}",
        f"- Latencia p95 (ms): {resultado['latencia_p95_ms']:.4f}",
        "",
        "---",
        "",
        "## Discrepancias por caso",
        "",
    ]

    discrepancias = obtener_discrepancias_context_resolver(resultado["casos"])

    if not discrepancias:
        lineas.append("No se registraron discrepancias en este split.")
        lineas.append("")
        return "\n".join(lineas)

    for caso in discrepancias:
        lineas.extend(
            [
                f"### Caso: {caso['id']} ({caso['categoria']})",
                "",
                f"- **Split:** `{caso['split']}`",
                f"- **Historial:** `{caso['historial']}`",
                f"- **Pregunta actual:** {caso['pregunta_actual']}",
                f"- **Esperada (`uso_contexto={caso['uso_contexto_esperado']}`):** {caso['pregunta_resuelta_esperada']}",
                f"- **Predicha (`uso_contexto={caso['uso_contexto_predicho']}`):** {caso['pregunta_resuelta_predicha']}",
                f"- **Filtros faltantes:** `{caso['filtros_faltantes']}`",
                "",
            ]
        )

    return "\n".join(lineas)


def guardar_reporte_context_resolver_markdown(
    contenido: str,
    ruta: str | Path,
) -> None:
    """
    Persiste el reporte Markdown de evaluación en disco, creando los directorios
    padres si no existen.

    Args:
        contenido: Texto Markdown del reporte.
        ruta: Ruta destino donde guardar el archivo.
    """
    destino = Path(ruta)
    destino.parent.mkdir(parents=True, exist_ok=True)
    destino.write_text(contenido, encoding="utf-8")

