"""Tests unitarios en fase RED (TDD) para la deduplicación de coincidencias
por token en CalcularScoreNombreColumna y el cálculo de cobertura exacta
sin inflación por variantes morfológicas en CalcularScoreNombreTabla.
"""

import pytest

from backend.service.score_calculator import (
    BONUS_MATCH_EXACTO_NOMBRE_TABLA,
    CalcularScoreNombreColumna,
    CalcularScoreNombreTabla,
    PESO_NOMBRE_COLUMNA,
    PESO_NOMBRE_TABLA,
)
from backend.utils.text_utils import TextUtils


@pytest.fixture
def text_utils() -> TextUtils:
    """Provee una instancia de TextUtils para normalización de texto en los tests.

    Returns:
        Instancia configurada de TextUtils.
    """
    return TextUtils()


def test_should_count_question_token_once_when_present_in_three_column_names(
    text_utils: TextUtils,
) -> None:
    """Verifica que un mismo token de la pregunta presente en tres nombres de columna
    distintos se contabilice una única vez por tabla en CalcularScoreNombreColumna.

    Args:
        text_utils: Utilidad de normalización de texto.
    """
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens_pregunta = text_utils.normalizar_texto("organizaciones")
    tabla = {
        "nombre_real": "entidad_ejemplo",
        "columnas": {
            "id_organizacion": "Identificador de la organización",
            "nombre_organizacion": "Nombre de la organización",
            "tipo_organizacion": "Tipo de organización",
        },
    }

    # Act
    score = calculator.calcular_score(tokens_pregunta, tabla)

    # Assert
    assert score == PESO_NOMBRE_COLUMNA


def test_should_accumulate_scores_when_two_distinct_tokens_match_different_columns(
    text_utils: TextUtils,
) -> None:
    """Verifica que dos tokens distintos de la pregunta que coinciden con dos columnas
    diferentes acumulen sus respectivos puntajes base en CalcularScoreNombreColumna.

    Nota sobre discrepancia del bonus exacto de columna:
        En la implementación actual de CalcularScoreNombreColumna, el bonus
        BONUS_MATCH_EXACTO_NOMBRE_COLUMNA (+4) se otorga por cada columna individual
        cuando `matches == len(tokens_columna)`. En el borrador de la octava auditoría
        se utilizaron columnas de un solo token ('presupuesto' y 'monto'), lo que en
        la lógica actual dispararía dos bonus exactos (+8) mientras la fórmula del
        borrador sumaba solo uno (+4), mezclando la deduplicación con un cambio en la
        semántica del bonus. Para separar estrictamente la deduplicación de tokens del
        comportamiento del bonus exacto, se emplean nombres de columna compuestos de dos
        tokens donde coincide un token por columna (`matches = 1 < len(tokens_columna) = 2`),
        evaluando de forma aislada la acumulación legítima de tokens distintos.

    Args:
        text_utils: Utilidad de normalización de texto.
    """
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens_pregunta = text_utils.normalizar_texto("presupuesto y monto")
    tabla = {
        "nombre_real": "finanzas",
        "columnas": {
            "presupuesto_anual": "Presupuesto asignado en el año",
            "monto_ejecutado": "Monto efectivamente utilizado",
        },
    }

    # Act
    score = calculator.calcular_score(tokens_pregunta, tabla)

    # Assert
    assert score == 2 * PESO_NOMBRE_COLUMNA


def test_should_not_multiply_score_when_table_like_t3_repeats_organizacion_in_columns(
    text_utils: TextUtils,
) -> None:
    """Verifica que una tabla ancha como T3 (recursos_humanos) no obtenga un puntaje
    multiplicado por repetir el término genérico 'organizacion' en varios nombres de columna.

    Args:
        text_utils: Utilidad de normalización de texto.
    """
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens_pregunta = text_utils.normalizar_texto(
        "¿Qué organizaciones participaron en el relevamiento?"
    )
    tabla_t3 = {
        "nombre_real": "recursos_humanos",
        "columnas": {
            "id_organizacion": "identificador de la organización",
            "renta_menor_organizacion": "La menor renta de la organizacion",
            "renta_mayor_organizacion": "La mayor renta de la organizacion",
            "personal_contratado_organizacion": "La cantidad de personal contratado por la organización",
        },
    }

    # Act
    score = calculator.calcular_score(tokens_pregunta, tabla_t3)

    # Assert
    assert score == PESO_NOMBRE_COLUMNA


def test_should_grant_exact_name_bonus_to_t1_in_dev_026_when_question_has_variants(
    text_utils: TextUtils,
) -> None:
    """Verifica que T1 ('organizacion') reciba el bonus de coincidencia exacta de nombre
    de tabla en el caso DEV_026 aunque la pregunta contenga las variantes morfológicas
    'organizaciones' y 'organizacion'.

    Condición verificada:
        El bonus exacto de nombre de tabla requiere la cobertura completa de todos los
        tokens relevantes de `nombre_real`, contabilizando una sola vez cada token del
        nombre de la tabla sin inflar ni invalidar la igualdad `matches == len(tokens_nombre)`
        cuando múltiples variantes morfológicas en la pregunta coinciden con el mismo
        token del nombre de la tabla.

    Args:
        text_utils: Utilidad de normalización de texto.
    """
    # Arrange
    calculator = CalcularScoreNombreTabla()
    tokens_pregunta = text_utils.normalizar_texto(
        "¿Qué organizaciones pertenecen a cada tipo de organización?"
    )
    tabla_t1 = {
        "nombre_real": "organizacion",
    }

    # Act
    score = calculator.calcular_score(tokens_pregunta, tabla_t1)

    # Assert
    assert score == PESO_NOMBRE_TABLA + BONUS_MATCH_EXACTO_NOMBRE_TABLA
