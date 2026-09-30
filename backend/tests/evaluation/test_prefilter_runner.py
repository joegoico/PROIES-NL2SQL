import pytest

from backend.evaluation.prefilter_runner import ejecutar_prefilter_benchmark


def test_ejecutar_prefilter_benchmark_falla_si_hay_gold_invalido():
    casos = [
        {
            "id": "DEV_017",
            "split": "dev",
            "question": "pregunta",
            "gold_tables": ["T1", "82", "T83"],
        }
    ]

    esquema_maestro = {
        "T1": {},
        "T82": {},
        "T83": {},
    }

    with pytest.raises(
        ValueError,
        match="Gold tables inválidas",
    ):
        ejecutar_prefilter_benchmark(
            casos=casos,
            prefilter=None,
            esquema_maestro=esquema_maestro,
        )
class MockPrefilter:
    def obtener_indices(
        self,
        pregunta,
        esquema_maestro,
        top_k=10,
    ):
        if pregunta == "pregunta 1":
            return [
                "T1",
                "T2",
                "T3",
                "T4",
                "T5",
            ]

        if pregunta == "pregunta 2":
            return [
                "T1",
                "T2",
                "T3",
                "T4",
                "T5",
                "T6",
            ]

        return [] 
def test_ejecutar_prefilter_benchmark_calcula_promedios():
    casos = [
        {
            "id": "DEV_001",
            "split": "dev",
            "question": "pregunta 1",
            "gold_tables": ["T1", "T2"],
        },
        {
            "id": "DEV_002",
            "split": "dev",
            "question": "pregunta 2",
            "gold_tables": ["T1", "T6"],
        },
    ]
    e_m = {
        "T1": {},
        "T2": {},
        "T3": {},
        "T4": {},
        "T5": {},
        "T6": {},
    }
    resultado = ejecutar_prefilter_benchmark(
        casos=casos,
        prefilter=MockPrefilter(),
        esquema_maestro = e_m,
    )

    assert len(resultado["casos"]) == 2

    assert resultado["recall_at_5_promedio"] == 0.75
    assert resultado["recall_at_10_promedio"] == 1.0

def test_ejecutar_prefilter_benchmark_conserva_resultados_por_caso():
    casos = [
        {
            "id": "DEV_001",
            "split": "dev",
            "question": "pregunta 1",
            "gold_tables": ["T1", "T2"],
        }
    ]
    esquema_maestro = {
        "T1": {},
        "T2": {},
        "T3": {},
        "T4": {},
        "T5": {},
        "T6": {},
    }

    resultado = ejecutar_prefilter_benchmark(
        casos=casos,
        prefilter=MockPrefilter(),
        esquema_maestro=esquema_maestro,
    )

    caso = resultado["casos"][0]

    assert caso["id"] == "DEV_001"
    assert caso["recall_at_5"] == 1.0
    assert caso["recall_at_10"] == 1.0 

def test_ejecutar_prefilter_benchmark_sin_casos_lanza_error():
    with pytest.raises(ValueError, match="No hay casos evaluables"):
        ejecutar_prefilter_benchmark(
            casos=[],
            prefilter=None,
            esquema_maestro={},
        )