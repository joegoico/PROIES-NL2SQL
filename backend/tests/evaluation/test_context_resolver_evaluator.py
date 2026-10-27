from __future__ import annotations

import json
import pytest

from backend.custom.context_resolver import ContextResolver, ResultadoResolucion
from backend.evaluation.context_resolver_evaluator import (
    _calcular_percentil,
    calcular_metricas_context_resolver,
    cargar_context_resolver_dataset,
    ejecutar_context_resolver_benchmark,
    evaluar_caso_context_resolver,
    filtrar_casos_por_split,
)
from backend.evaluation.reports.context_resolver_reports_generator import (
    generar_reporte_context_resolver_markdown,
    guardar_reporte_context_resolver_markdown,
    obtener_discrepancias_context_resolver,
)
from backend.evaluation.run_context_resolver_benchmark import main


class StubResolver:
    """Resolver determinístico configurable por pregunta para testear métricas."""

    def __init__(self, respuestas: dict[str, ResultadoResolucion]) -> None:
        self.respuestas = respuestas

    def resolver(
        self, pregunta: str, historial: list[str]
    ) -> ResultadoResolucion:
        if pregunta in self.respuestas:
            return self.respuestas[pregunta]
        return ResultadoResolucion(
            pregunta_original=pregunta,
            pregunta_resuelta=pregunta,
            uso_contexto=False,
        )


@pytest.fixture
def casos_ejemplo() -> list[dict]:
    return [
        # Caso 1: Verdadero Positivo exacto con filtro preservado (development)
        {
            "id": "CR-001",
            "split": "development",
            "categoria": "referencias_plurales_simples",
            "historial": ["¿Cuántas organizaciones rurales hay?"],
            "pregunta_actual": "¿Cuántas de esas tienen personería jurídica?",
            "pregunta_resuelta_esperada": "¿Cuántas organizaciones rurales tienen personería jurídica?",
            "uso_contexto_esperado": True,
            "filtros_obligatorios": ["rurales"],
        },
        # Caso 2: Positivo esperado donde el resolver resuelve pero pierde el filtro (development)
        {
            "id": "CR-002",
            "split": "development",
            "categoria": "refinamiento_y_conservacion_de_filtros",
            "historial": [
                "¿Cuántas organizaciones hay?",
                "¿Cuántas organizaciones activas hay?",
            ],
            "pregunta_actual": "¿Cuántas de esas reciben fondos?",
            "pregunta_resuelta_esperada": "¿Cuántas organizaciones activas reciben fondos?",
            "uso_contexto_esperado": True,
            "filtros_obligatorios": ["activas"],
        },
        # Caso 3: Falso Negativo (debía resolver, pero se abstiene) (holdout)
        {
            "id": "CR-003",
            "split": "holdout",
            "categoria": "entidades_nombradas",
            "historial": ['¿Cuál es la situación de "Cáritas Argentina"?'],
            "pregunta_actual": "¿Qué convenio firmó la misma?",
            "pregunta_resuelta_esperada": "¿Qué convenio firmó Cáritas Argentina?",
            "uso_contexto_esperado": True,
            "filtros_obligatorios": [],
        },
        # Caso 4: Verdadero Negativo (abstención correcta) (development)
        {
            "id": "CR-004",
            "split": "development",
            "categoria": "ambiguedad_y_abstencion",
            "historial": [
                "¿Cuántas organizaciones hay?",
                "¿Cuántas asociaciones civiles hay?",
            ],
            "pregunta_actual": "¿Cuántas de esas tienen donaciones?",
            "pregunta_resuelta_esperada": "¿Cuántas de esas tienen donaciones?",
            "uso_contexto_esperado": False,
            "filtros_obligatorios": [],
        },
        # Caso 5: Falso Positivo (no debía usar contexto, pero resuelve) (holdout)
        {
            "id": "CR-005",
            "split": "holdout",
            "categoria": "cambios_de_tema",
            "historial": ["¿Cuántas organizaciones hay?"],
            "pregunta_actual": "¿Cuántos actores hay?",
            "pregunta_resuelta_esperada": "¿Cuántos actores hay?",
            "uso_contexto_esperado": False,
            "filtros_obligatorios": [],
        },
    ]


# ─────────────────────────────────────────────────────────────────────────────
# Carga y validación de estructura del dataset
# ─────────────────────────────────────────────────────────────────────────────


def test_cargar_context_resolver_dataset_valido(tmp_path):
    dataset_raw = {
        "dataset_name": "Test Set",
        "total_cases": 1,
        "cases": [
            {
                "id": "CR-001",
                "split": "development",
                "historial": [],
                "pregunta_actual": "¿Cuántas hay?",
                "pregunta_resuelta_esperada": "¿Cuántas hay?",
                "uso_contexto_esperado": False,
                "filtros_obligatorios": [],
            }
        ],
    }
    archivo = tmp_path / "cases.json"
    archivo.write_text(json.dumps(dataset_raw), encoding="utf-8")

    cargado = cargar_context_resolver_dataset(archivo)

    assert cargado["dataset_name"] == "Test Set"
    assert len(cargado["cases"]) == 1
    assert cargado["cases"][0]["id"] == "CR-001"


@pytest.mark.parametrize(
    "contenido_invalido",
    [
        [{"id": "CR-001"}],
        {"dataset_name": "Sin cases"},
        {"cases": "no_es_lista"},
    ],
)
def test_cargar_context_resolver_dataset_estructura_invalida_lanza_error(
    tmp_path, contenido_invalido
):
    archivo = tmp_path / "invalido.json"
    archivo.write_text(json.dumps(contenido_invalido), encoding="utf-8")

    with pytest.raises(ValueError):
        cargar_context_resolver_dataset(archivo)


# ─────────────────────────────────────────────────────────────────────────────
# Selección de split (development, holdout, all)
# ─────────────────────────────────────────────────────────────────────────────


def test_filtrar_casos_por_split_development_holdout_y_all(casos_ejemplo):
    dev = filtrar_casos_por_split(casos_ejemplo, split="development")
    holdout = filtrar_casos_por_split(casos_ejemplo, split="holdout")
    todos = filtrar_casos_por_split(casos_ejemplo, split="all")

    assert [c["id"] for c in dev] == ["CR-001", "CR-002", "CR-004"]
    assert [c["id"] for c in holdout] == ["CR-003", "CR-005"]
    assert len(todos) == 5


def test_filtrar_casos_por_split_invalido_lanza_value_error(casos_ejemplo):
    with pytest.raises(ValueError, match="Split inválido"):
        filtrar_casos_por_split(casos_ejemplo, split="train")  # type: ignore[arg-type]


# ─────────────────────────────────────────────────────────────────────────────
# Evaluación individual de casos
# ─────────────────────────────────────────────────────────────────────────────


def test_evaluar_caso_detecta_coincidencia_exacta_y_filtro_presente():
    caso = {
        "id": "CR-001",
        "split": "development",
        "categoria": "referencias_plurales_simples",
        "historial": ["¿Cuántas organizaciones rurales hay?"],
        "pregunta_actual": "¿Cuántas de esas tienen personería jurídica?",
        "pregunta_resuelta_esperada": "¿Cuántas organizaciones rurales tienen personería jurídica?",
        "uso_contexto_esperado": True,
        "filtros_obligatorios": ["rurales"],
    }
    stub = StubResolver(
        {
            "¿Cuántas de esas tienen personería jurídica?": ResultadoResolucion(
                pregunta_original="¿Cuántas de esas tienen personería jurídica?",
                pregunta_resuelta="¿Cuántas organizaciones rurales tienen personería jurídica?",
                uso_contexto=True,
            )
        }
    )

    res = evaluar_caso_context_resolver(caso, stub)

    assert res["decision_correcta"] is True
    assert res["coincidencia_exacta"] is True
    assert res["falso_positivo"] is False
    assert res["falso_negativo"] is False
    assert res["perdida_de_filtros"] is False
    assert res["filtros_faltantes"] == []
    assert res["latencia_ms"] >= 0.0


def test_evaluar_caso_detecta_perdida_de_filtros():
    caso = {
        "id": "CR-014",
        "split": "development",
        "categoria": "refinamiento_y_conservacion_de_filtros",
        "historial": [
            "¿Cuántas organizaciones hay?",
            "¿Cuántas organizaciones rurales están activas?",
        ],
        "pregunta_actual": "¿Esas tienen proyectos vigentes?",
        "pregunta_resuelta_esperada": "¿Las organizaciones rurales que están activas tienen proyectos vigentes?",
        "uso_contexto_esperado": True,
        "filtros_obligatorios": ["rurales", "activas"],
    }
    stub = StubResolver(
        {
            "¿Esas tienen proyectos vigentes?": ResultadoResolucion(
                pregunta_original="¿Esas tienen proyectos vigentes?",
                pregunta_resuelta="¿Las organizaciones rurales tienen proyectos vigentes?",
                uso_contexto=True,
            )
        }
    )

    res = evaluar_caso_context_resolver(caso, stub)

    assert res["decision_correcta"] is True
    assert res["coincidencia_exacta"] is False
    assert res["perdida_de_filtros"] is True
    assert res["filtros_faltantes"] == ["activas"]


# ─────────────────────────────────────────────────────────────────────────────
# Cálculo de métricas agregadas y latencias p50 / p95
# ─────────────────────────────────────────────────────────────────────────────


def test_ejecutar_benchmark_calcula_todas_las_metricas_correctamente(
    casos_ejemplo,
):
    stub = StubResolver(
        {
            # CR-001: TP y exacto (con filtro "rurales")
            "¿Cuántas de esas tienen personería jurídica?": ResultadoResolucion(
                pregunta_original="¿Cuántas de esas tienen personería jurídica?",
                pregunta_resuelta="¿Cuántas organizaciones rurales tienen personería jurídica?",
                uso_contexto=True,
            ),
            # CR-002: Usa contexto (TP de decisión), pero pierde filtro "activas" (no es exacto)
            "¿Cuántas de esas reciben fondos?": ResultadoResolucion(
                pregunta_original="¿Cuántas de esas reciben fondos?",
                pregunta_resuelta="¿Cuántas organizaciones reciben fondos?",
                uso_contexto=True,
            ),
            # CR-003: Se abstiene cuando debía resolver → FN
            "¿Qué convenio firmó la misma?": ResultadoResolucion(
                pregunta_original="¿Qué convenio firmó la misma?",
                pregunta_resuelta="¿Qué convenio firmó la misma?",
                uso_contexto=False,
            ),
            # CR-004: Se abstiene cuando debía abstenerse → TN y exacto
            "¿Cuántas de esas tienen donaciones?": ResultadoResolucion(
                pregunta_original="¿Cuántas de esas tienen donaciones?",
                pregunta_resuelta="¿Cuántas de esas tienen donaciones?",
                uso_contexto=False,
            ),
            # CR-005: Usa contexto cuando no debía → FP
            "¿Cuántos actores hay?": ResultadoResolucion(
                pregunta_original="¿Cuántos actores hay?",
                pregunta_resuelta="¿Cuántas organizaciones y actores hay?",
                uso_contexto=True,
            ),
        }
    )

    res = ejecutar_context_resolver_benchmark(
        dataset={"cases": casos_ejemplo},
        resolver=stub,
        split="all",
    )

    assert res["total_casos"] == 5
    # Decisiones correctas: CR-001 (T==T), CR-002 (T==T), CR-004 (F==F) -> 3/5 = 0.6
    assert res["exactitud_decision"] == pytest.approx(3 / 5)
    # Coincidencias exactas: CR-001, CR-004 -> 2/5 = 0.4
    assert res["coincidencia_exacta"] == pytest.approx(2 / 5)
    # Resoluciones aceptadas (uso_contexto_predicho=True): CR-001, CR-002, CR-005 (3).
    # De esas, positivas esperadas y exactas: solo CR-001 (1/3)
    assert res["precision_resoluciones_aceptadas"] == pytest.approx(1 / 3)
    # Cobertura sobre positivos esperados (CR-001, CR-002, CR-003 = 3): solo CR-001 resuelto exacto (1/3)
    assert res["cobertura"] == pytest.approx(1 / 3)
    # Abstenciones (uso_contexto_predicho=False): CR-003, CR-004 -> 2/5 = 0.4
    assert res["tasa_abstencion"] == pytest.approx(2 / 5)
    # Falsos positivos: CR-005 -> 1 (tasa: 1 / 2 negativos esperados = 0.5)
    assert res["falsos_positivos"] == 1
    assert res["tasa_falsos_positivos"] == pytest.approx(1 / 2)
    # Falsos negativos: CR-003 -> 1 (tasa: 1 / 3 positivos esperados = 1/3)
    assert res["falsos_negativos"] == 1
    assert res["tasa_falsos_negativos"] == pytest.approx(1 / 3)
    # Casos con filtros obligatorios: CR-001 y CR-002 (2). Pierde filtro CR-002 -> 1 (tasa 0.5)
    assert res["perdida_de_filtros"] == 1
    assert res["tasa_perdida_de_filtros"] == pytest.approx(1 / 2)
    assert res["latencia_p50_ms"] >= 0.0
    assert res["latencia_p95_ms"] >= res["latencia_p50_ms"]


# ─────────────────────────────────────────────────────────────────────────────
# Casos límite (edge cases)
# ─────────────────────────────────────────────────────────────────────────────


def test_calcular_metricas_sin_resultados_lanza_value_error():
    with pytest.raises(ValueError, match="No hay resultados"):
        calcular_metricas_context_resolver([])


def test_ejecutar_benchmark_con_split_vacio_lanza_value_error(casos_ejemplo):
    solo_dev = [c for c in casos_ejemplo if c["split"] == "development"]
    with pytest.raises(ValueError, match="No hay casos evaluables"):
        ejecutar_context_resolver_benchmark(
            dataset=solo_dev,
            resolver=StubResolver({}),
            split="holdout",
        )


def test_metricas_cuando_todos_se_abstienen_y_no_hay_filtros():
    caso_negativo = {
        "id": "CR-045",
        "split": "development",
        "categoria": "ambiguedad_y_abstencion",
        "historial": [],
        "pregunta_actual": "¿Cuáles de esas tienen proyectos?",
        "pregunta_resuelta_esperada": "¿Cuáles de esas tienen proyectos?",
        "uso_contexto_esperado": False,
        "filtros_obligatorios": [],
    }
    res = ejecutar_context_resolver_benchmark(
        dataset=[caso_negativo],
        resolver=StubResolver({}),
        split="all",
    )

    assert res["total_casos"] == 1
    assert res["exactitud_decision"] == 1.0
    assert res["coincidencia_exacta"] == 1.0
    assert res["precision_resoluciones_aceptadas"] == 1.0
    assert res["cobertura"] == 1.0
    assert res["tasa_abstencion"] == 1.0
    assert res["falsos_positivos"] == 0
    assert res["tasa_falsos_positivos"] == 0.0
    assert res["falsos_negativos"] == 0
    assert res["tasa_falsos_negativos"] == 0.0
    assert res["perdida_de_filtros"] == 0
    assert res["tasa_perdida_de_filtros"] == 0.0


def test_calcular_percentil_casos_borde():
    assert _calcular_percentil([], 50.0) == 0.0
    assert _calcular_percentil([4.2], 50.0) == pytest.approx(4.2)
    assert _calcular_percentil([4.2], 95.0) == pytest.approx(4.2)
    assert _calcular_percentil([1.0, 2.0, 3.0, 4.0, 5.0], 50.0) == pytest.approx(3.0)
    assert _calcular_percentil([1.0, 2.0, 3.0, 4.0, 5.0], 95.0) == pytest.approx(4.8)

    with pytest.raises(ValueError):
        _calcular_percentil([1.0, 2.0], 105.0)
    with pytest.raises(ValueError):
        _calcular_percentil([1.0, 2.0], -1.0)


def test_metricas_cuando_todos_los_casos_son_positivos_esperados():
    caso_positivo = {
        "id": "CR-001",
        "split": "development",
        "categoria": "referencias_plurales_simples",
        "historial": ["¿Cuántas organizaciones rurales hay?"],
        "pregunta_actual": "¿Cuántas de esas tienen personería jurídica?",
        "pregunta_resuelta_esperada": "¿Cuántas organizaciones rurales tienen personería jurídica?",
        "uso_contexto_esperado": True,
        "filtros_obligatorios": ["rurales"],
    }
    stub = StubResolver(
        {
            "¿Cuántas de esas tienen personería jurídica?": ResultadoResolucion(
                pregunta_original="¿Cuántas de esas tienen personería jurídica?",
                pregunta_resuelta="¿Cuántas organizaciones rurales tienen personería jurídica?",
                uso_contexto=True,
            )
        }
    )

    res = ejecutar_context_resolver_benchmark(
        dataset=[caso_positivo],
        resolver=stub,
        split="all",
    )

    assert res["total_casos"] == 1
    assert res["exactitud_decision"] == 1.0
    assert res["coincidencia_exacta"] == 1.0
    assert res["precision_resoluciones_aceptadas"] == 1.0
    assert res["cobertura"] == 1.0
    assert res["tasa_abstencion"] == 0.0
    assert res["falsos_positivos"] == 0
    assert res["tasa_falsos_positivos"] == 0.0
    assert res["falsos_negativos"] == 0
    assert res["tasa_falsos_negativos"] == 0.0
    assert res["perdida_de_filtros"] == 0
    assert res["tasa_perdida_de_filtros"] == 0.0


def test_evaluar_caso_no_muta_historial_ni_filtros_del_caso_original():
    historial_original = ["¿Cuántas organizaciones rurales hay?"]
    filtros_originales = ["rurales"]
    caso = {
        "id": "CR-001",
        "split": "development",
        "categoria": "referencias_plurales_simples",
        "historial": historial_original,
        "pregunta_actual": "¿Cuántas de esas tienen personería jurídica?",
        "pregunta_resuelta_esperada": "¿Cuántas organizaciones rurales tienen personería jurídica?",
        "uso_contexto_esperado": True,
        "filtros_obligatorios": filtros_originales,
    }
    res = evaluar_caso_context_resolver(caso, ContextResolver())

    res["historial"].append("otra pregunta")
    res["filtros_obligatorios"].append("otro filtro")

    assert historial_original == ["¿Cuántas organizaciones rurales hay?"]
    assert filtros_originales == ["rurales"]


def test_evaluar_caso_comparacion_de_filtros_es_case_insensitive_y_normaliza_espacios():
    caso = {
        "id": "CR-022",
        "split": "development",
        "categoria": "refinamiento_y_conservacion_de_filtros",
        "historial": [
            "¿Cuántos proyectos sociales hay?",
            "¿Cuántos proyectos sociales con financiamiento hay?",
        ],
        "pregunta_actual": "¿Esos tienen responsables asignados?",
        "pregunta_resuelta_esperada": "¿Los proyectos sociales con financiamiento tienen responsables asignados?",
        "uso_contexto_esperado": True,
        "filtros_obligatorios": ["  CON   FINANCIAMIENTO "],
    }
    stub = StubResolver(
        {
            "¿Esos tienen responsables asignados?": ResultadoResolucion(
                pregunta_original="¿Esos tienen responsables asignados?",
                pregunta_resuelta="¿Los proyectos sociales con financiamiento tienen responsables asignados?",
                uso_contexto=True,
            )
        }
    )

    res = evaluar_caso_context_resolver(caso, stub)

    assert res["perdida_de_filtros"] is False
    assert res["filtros_faltantes"] == []


def test_ejecutar_benchmark_instancia_context_resolver_por_defecto_si_es_none():
    caso = {
        "id": "CR-001",
        "split": "development",
        "categoria": "referencias_plurales_simples",
        "historial": ["¿Cuántas organizaciones rurales hay?"],
        "pregunta_actual": "¿Cuántas de esas tienen personería jurídica?",
        "pregunta_resuelta_esperada": "¿Cuántas organizaciones rurales tienen personería jurídica?",
        "uso_contexto_esperado": True,
        "filtros_obligatorios": ["rurales"],
    }

    res = ejecutar_context_resolver_benchmark(dataset=[caso], resolver=None, split="all")

    assert res["total_casos"] == 1
    assert res["coincidencia_exacta"] == 1.0


def test_generar_reporte_markdown_sin_discrepancias_y_con_discrepancias(casos_ejemplo):
    # 1. Sin discrepancias
    caso_ok = casos_ejemplo[0]
    stub_ok = StubResolver(
        {
            caso_ok["pregunta_actual"]: ResultadoResolucion(
                pregunta_original=caso_ok["pregunta_actual"],
                pregunta_resuelta=caso_ok["pregunta_resuelta_esperada"],
                uso_contexto=True,
            )
        }
    )
    res_ok = ejecutar_context_resolver_benchmark([caso_ok], resolver=stub_ok, split="all")
    reporte_ok = generar_reporte_context_resolver_markdown(res_ok)

    assert "No se registraron discrepancias en este split." in reporte_ok

    # 2. Con discrepancias
    stub_fail = StubResolver({})
    res_fail = ejecutar_context_resolver_benchmark([caso_ok], resolver=stub_fail, split="all")
    discrepancias = obtener_discrepancias_context_resolver(res_fail["casos"])
    reporte_fail = generar_reporte_context_resolver_markdown(res_fail)

    assert len(discrepancias) == 1
    assert "### Caso: CR-001 (referencias_plurales_simples)" in reporte_fail
    assert "**Filtros faltantes:** `['rurales']`" in reporte_fail


def test_guardar_reporte_context_resolver_markdown_crea_archivo(tmp_path):
    ruta = tmp_path / "subdir" / "context_resolver_benchmark.md"
    contenido = "# Benchmark ContextResolver\n"

    guardar_reporte_context_resolver_markdown(contenido=contenido, ruta=ruta)

    assert ruta.exists()
    assert ruta.read_text(encoding="utf-8") == contenido


def test_main_benchmark_ejecuta_guarda_reporte_y_retorna_diccionario(tmp_path, capsys):
    dataset_raw = {
        "dataset_name": "Mini Set",
        "total_cases": 1,
        "cases": [
            {
                "id": "CR-001",
                "split": "development",
                "categoria": "referencias_plurales_simples",
                "historial": ["¿Cuántas organizaciones rurales hay?"],
                "pregunta_actual": "¿Cuántas de esas tienen personería jurídica?",
                "pregunta_resuelta_esperada": "¿Cuántas organizaciones rurales tienen personería jurídica?",
                "uso_contexto_esperado": True,
                "filtros_obligatorios": ["rurales"],
            }
        ],
    }
    ruta_dataset = tmp_path / "mini_cases.json"
    ruta_reporte = tmp_path / "reporte.md"
    ruta_dataset.write_text(json.dumps(dataset_raw), encoding="utf-8")

    resultado = main(
        split="development",
        dataset_path=ruta_dataset,
        report_path=ruta_reporte,
    )
    salida = capsys.readouterr().out

    assert resultado["total_casos"] == 1
    assert resultado["coincidencia_exacta"] == 1.0
    assert "# Benchmark ContextResolver" in salida
    assert ruta_reporte.exists()
    assert "# Benchmark ContextResolver" in ruta_reporte.read_text(encoding="utf-8")


# ─────────────────────────────────────────────────────────────────────────────
# Integración real con backend/evaluation/context_resolver_cases.json
# ─────────────────────────────────────────────────────────────────────────────


@pytest.mark.parametrize(
    "split, cantidad_esperada",
    [
        ("development", 60),
        ("holdout", 20),
        ("all", 80),
    ],
)
def test_evaluacion_sobre_dataset_real_respeta_splits_y_genera_reporte(
    split, cantidad_esperada
):
    dataset = cargar_context_resolver_dataset(
        "backend/evaluation/context_resolver_cases.json"
    )
    resultado = ejecutar_context_resolver_benchmark(
        dataset=dataset,
        resolver=ContextResolver(),
        split=split,
    )

    assert resultado["split"] == split
    assert resultado["total_casos"] == cantidad_esperada
    assert 0.0 <= resultado["exactitud_decision"] <= 1.0
    assert 0.0 <= resultado["coincidencia_exacta"] <= 1.0
    assert 0.0 <= resultado["precision_resoluciones_aceptadas"] <= 1.0
    assert 0.0 <= resultado["cobertura"] <= 1.0
    assert 0.0 <= resultado["tasa_abstencion"] <= 1.0
    assert resultado["latencia_p50_ms"] > 0.0
    assert resultado["latencia_p95_ms"] >= resultado["latencia_p50_ms"]

    reporte = generar_reporte_context_resolver_markdown(resultado)
    assert "# Benchmark ContextResolver" in reporte
    assert f"Casos evaluados: {cantidad_esperada}" in reporte


# ─────────────────────────────────────────────────────────────────────────────
# Coincidencia exacta insensible a mayúsculas/minúsculas (TDD AAA)
# ─────────────────────────────────────────────────────────────────────────────


@pytest.mark.parametrize(
    "predicha, esperada",
    [
        (
            "¿las organizaciones reciben donaciones?",
            "¿Las organizaciones reciben donaciones?",
        ),
        (
            "¿qué convenio firmó cáritas argentina?",
            "¿Qué convenio firmó Cáritas Argentina?",
        ),
        (
            "¿CUÁNTAS ORGANIZACIONES RURALES TIENEN PERSONERÍA JURÍDICA?",
            "¿Cuántas organizaciones rurales tienen personería jurídica?",
        ),
    ],
)
def test_should_mark_exact_match_true_when_only_capitalization_differs(
    predicha: str, esperada: str
) -> None:
    # Arrange
    pregunta_actual = "¿Esas reciben donaciones?"
    caso = {
        "id": "CR-CAP",
        "split": "development",
        "categoria": "referencias_plurales_simples",
        "historial": ["¿Cuántas organizaciones hay?"],
        "pregunta_actual": pregunta_actual,
        "pregunta_resuelta_esperada": esperada,
        "uso_contexto_esperado": True,
        "filtros_obligatorios": [],
    }
    stub = StubResolver(
        {
            pregunta_actual: ResultadoResolucion(
                pregunta_original=pregunta_actual,
                pregunta_resuelta=predicha,
                uso_contexto=True,
            )
        }
    )

    # Act
    resultado = evaluar_caso_context_resolver(caso, stub)

    # Assert
    assert resultado["coincidencia_exacta"] is True


@pytest.mark.parametrize(
    "predicha, esperada",
    [
        (
            "¿Las organizaciones tienen personeria juridica?",
            "¿Las organizaciones tienen personería jurídica?",
        ),
        (
            "Las organizaciones reciben donaciones",
            "¿Las organizaciones reciben donaciones?",
        ),
        (
            "¿Las organizaciones rurales reciben donaciones?",
            "¿Las organizaciones reciben donaciones?",
        ),
    ],
)
def test_should_mark_exact_match_false_when_accents_punctuation_or_words_differ(
    predicha: str, esperada: str
) -> None:
    # Arrange
    pregunta_actual = "¿Esas reciben donaciones?"
    caso = {
        "id": "CR-STRICT",
        "split": "development",
        "categoria": "referencias_plurales_simples",
        "historial": ["¿Cuántas organizaciones hay?"],
        "pregunta_actual": pregunta_actual,
        "pregunta_resuelta_esperada": esperada,
        "uso_contexto_esperado": True,
        "filtros_obligatorios": [],
    }
    stub = StubResolver(
        {
            pregunta_actual: ResultadoResolucion(
                pregunta_original=pregunta_actual,
                pregunta_resuelta=predicha,
                uso_contexto=True,
            )
        }
    )

    # Act
    resultado = evaluar_caso_context_resolver(caso, stub)

    # Assert
    assert resultado["coincidencia_exacta"] is False


