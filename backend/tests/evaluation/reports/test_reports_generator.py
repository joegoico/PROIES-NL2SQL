from pathlib import Path

from backend.evaluation.reports.reports_generator import (
    generar_reporte_markdown,
    construir_diagnosticos,
    guardar_reporte_markdown,
)

def test_generar_reporte_markdown_incluye_resumen_y_diagnostico():
    resultado = {
        "casos": [
            {
                "id": "dev_001",
                "gold_tables": ["T1", "T82"],
                "predicted_tables": ["T82"],
                "recall_at_10": 0.5,
            }
        ],
        "recall_at_5_promedio": 0.4,
        "recall_at_10_promedio": 0.5,
    }

    diagnosticos = [
        {
            "id": "dev_001",
            "pregunta": "¿Qué organizaciones participan en proyectos?",
            "gold_no_recuperadas": [
                {
                    "tabla": "T1",
                    "rank": 14,
                    "score": 18.5,
                }
            ],
            "ranking": [
                {
                    "posicion": 1,
                    "tabla": "T82",
                    "score": 42.0,
                },
                {
                    "posicion": 2,
                    "tabla": "T23",
                    "score": 37.0,
                },
                {
                    "posicion": 14,
                    "tabla": "T1",
                    "score": 18.5,
                },
            ],
        }
    ]

    reporte = generar_reporte_markdown(
        resultado=resultado,
        diagnosticos=diagnosticos,
    )

    assert "# Benchmark Prefilter" in reporte

    assert "Casos evaluados: 1" in reporte
    assert "Recall@5: 0.4000" in reporte
    assert "Recall@10: 0.5000" in reporte

    assert "dev_001" in reporte
    assert "¿Qué organizaciones participan en proyectos?" in reporte

    assert "T1" in reporte
    assert "18.50" in reporte
    assert "14" in reporte

def test_construir_diagnosticos_identifica_gold_no_recuperadas():
    casos = [
        {
            "id": "dev_001",
            "question": "¿Qué organizaciones participan en proyectos?",
            "gold_tables": ["T1", "T82"],
        }
    ]

    resultado_caso = {
        "id": "dev_001",
        "gold_tables": ["T1", "T82"],
        "predicted_tables": ["T82"],
        "recall_at_10": 0.5,
    }

    ranking = [
        ("T82", 42.0),
        ("T23", 37.0),
        ("T1", 18.5),
    ]

    diagnosticos = construir_diagnosticos(
        casos=casos,
        resultados=[resultado_caso],
        rankings={
            "dev_001": ranking,
        },
    )

    assert len(diagnosticos) == 1

    diagnostico = diagnosticos[0]

    assert diagnostico["id"] == "dev_001"

    assert (
        diagnostico["pregunta"]
        == "¿Qué organizaciones participan en proyectos?"
    )

    assert diagnostico["gold_no_recuperadas"] == [
        {
            "tabla": "T1",
            "rank": 3,
            "score": 18.5,
        }
    ]

def test_guardar_reporte_markdown_crea_archivo(tmp_path):
    contenido = "# Benchmark Prefilter\n\nCasos evaluados: 41"

    ruta = tmp_path / "prefilter_benchmark.md"

    guardar_reporte_markdown(
        contenido=contenido,
        ruta=ruta,
    )

    assert ruta.exists()
    assert ruta.read_text(encoding="utf-8") == contenido