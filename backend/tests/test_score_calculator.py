# backend/tests/test_score_calculators.py

import pytest

from backend.custom.schema_prefilter import SchemaPrefilter
from backend.service.score_calculator import (
    CalcularScoreNombreTabla,
    CalcualrScoreDescripcionTabla,
    CalcularScoreNombreColumna,
    CalcularScoreDescripcionColumna,
    BONUS_MATCH_EXACTO_NOMBRE_TABLA,
    BONUS_MATCH_EXACTO_DESCRIPCION_TABLA,
    BONUS_MATCH_EXACTO_NOMBRE_COLUMNA,
    BONUS_MATCH_EXACTO_DESCRIPCION_COLUMNA,
    PESO_NOMBRE_TABLA,
    PESO_DESCRIPCION_TABLA,
    PESO_NOMBRE_COLUMNA,
    PESO_DESCRIPCION_COLUMNA,
)
from backend.utils.text_utils import TextUtils

@pytest.fixture
def text_utils():
    return TextUtils()

def tabla_mock():
    return {
        "nombre_real": "organizaciones",
        "descripcion_tabla": "ONGs y asociaciones civiles",
        "columnas": {
            "nombre": "Nombre de la organización",
            "presupuesto": "Presupuesto anual",
        },
    }



def test_calcular_score_nombre_tabla_sin_match(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()
    tokens = text_utils.normalizar_texto("donaciones")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == 0


def test_calcular_score_descripcion_tabla_match(text_utils):
    # Arrange
    calculator = CalcualrScoreDescripcionTabla()
    tokens = text_utils.normalizar_texto("ONGs y asociaciones civiles")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == (3 * PESO_DESCRIPCION_TABLA + BONUS_MATCH_EXACTO_DESCRIPCION_TABLA)


def test_calcular_score_descripcion_tabla_sin_match(text_utils):
    # Arrange
    calculator = CalcualrScoreDescripcionTabla()
    tokens = text_utils.normalizar_texto("donaciones")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == 0


def test_calcular_score_nombre_columna_match_nombre_columna(text_utils):
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens = text_utils.normalizar_texto("presupuesto")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == PESO_NOMBRE_COLUMNA + BONUS_MATCH_EXACTO_NOMBRE_COLUMNA


def test_calcular_score_nombre_columna_match_descripcion_columna(text_utils):
    # Arrange
    calculator = CalcularScoreDescripcionColumna()
    tokens = text_utils.normalizar_texto("Presupuesto anual")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == (2 * PESO_DESCRIPCION_COLUMNA + BONUS_MATCH_EXACTO_DESCRIPCION_COLUMNA)


def test_calcular_score_nombre_columna_sin_match(text_utils):
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens = text_utils.normalizar_texto("auditoria")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == 0

def test_calculators_acumulan_multiples_matches(text_utils):
    # Arrange
    calculator = CalcularScoreDescripcionColumna()
    cal_col = CalcularScoreNombreColumna()

    tabla = {
        "columnas": {
            "presupuesto": "Presupuesto anual",
        }
    }

    tokens_descr = text_utils.normalizar_texto("presupuesto anual")
    tokens_nombre = text_utils.normalizar_texto("presupuesto")

    # Act
    score = calculator.calcular_score(tokens_descr, tabla) + cal_col.calcular_score(tokens_nombre, tabla)

    # Assert
    assert score ==(PESO_NOMBRE_COLUMNA +
        2*PESO_DESCRIPCION_COLUMNA
        + BONUS_MATCH_EXACTO_NOMBRE_COLUMNA
        + BONUS_MATCH_EXACTO_DESCRIPCION_COLUMNA
    )
def test_calcular_score_nombre_tabla_match_exacto(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()

    tokens_pregunta = text_utils.normalizar_texto("organizacion")

    tabla = {
        "nombre_real": "organizacion"
    }

    # Act
    score = calculator.calcular_score(
        tokens_pregunta,
        tabla,
    )

    # Assert
    assert score == PESO_NOMBRE_TABLA + BONUS_MATCH_EXACTO_NOMBRE_TABLA

def test_calcular_score_nombre_tabla_match_parcial_no_recibe_bonus(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()

    tokens_pregunta = text_utils.normalizar_texto("organizacion")

    tabla = {
        "nombre_real": "demandas_por_organizacion"
    }

    # Act
    score = calculator.calcular_score(
        tokens_pregunta,
        tabla,
    )

    # Assert
    assert score == PESO_NOMBRE_TABLA

def test_calcular_score_nombre_tabla_sin_match(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()

    tokens_pregunta = text_utils.normalizar_texto("organizacion")

    tabla = {
        "nombre_real": "proyectos"
    }

    # Act
    score = calculator.calcular_score(
        tokens_pregunta,
        tabla,
    )

    # Assert
    assert score == 0

def test_calcular_score_nombre_tabla_match_exacto_nombre_compuesto(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()

    tokens_pregunta = text_utils.normalizar_texto("demandas organizacion")
    print("TOKENS PREGUNTA:", tokens_pregunta)

    tabla = {
        "nombre_real": "demandas_por_organizacion"
    }

    # Act
    score = calculator.calcular_score(
        tokens_pregunta,
        tabla,
    )

    # Assert
    assert score == (
        2 * PESO_NOMBRE_TABLA
        + BONUS_MATCH_EXACTO_NOMBRE_TABLA
    )
def test_tabla_por_es_tabla_relacion(text_utils):
    # Arrange

    # Act
    resultado = text_utils._es_tabla_relacion(
        "proyecto_por_organizacion"
    )

    # Assert
    assert resultado is True

def test_tabla_entidad_no_es_tabla_relacion(text_utils):
    # Arrange
    # Act
    resultado = text_utils._es_tabla_relacion("organizacion")

    # Assert
    assert resultado is False

def test_tabla_x_es_tabla_relacion(text_utils):
    # Arrange
    # Act
    resultado = text_utils._es_tabla_relacion(
        "identidad_x_organizacion"
    )

    # Assert
    assert resultado is True

def test_tabla_relacionada_es_tabla_relacion(text_utils):
    # Arrange
    # Act
    resultado = text_utils._es_tabla_relacion(
        "proyecto_relacionada"
    )

    # Assert
    assert resultado is True

def test_tabla_relacion_recibe_menor_score_que_tabla_entidad(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()

    tokens = text_utils.normalizar_texto("organizacion")

    tabla_entidad = {
        "nombre_real": "organizacion"
    }

    tabla_relacion = {
        "nombre_real": "proyecto_por_organizacion"
    }

    # Act
    score_entidad = calculator.calcular_score(
        tokens,
        tabla_entidad,
    )

    score_relacion = calculator.calcular_score(
        tokens,
        tabla_relacion,
    )

    # Assert
    assert score_entidad > score_relacion

def test_tabla_entidad_principal_tiene_prioridad_sobre_tabla_relacion(text_utils):
    # Arrange
    calculator = CalcularScoreNombreTabla()

    tokens_pregunta = text_utils.normalizar_texto(
        "¿Qué organizaciones participan en proyectos?"
    )

    tabla_entidad = {
        "nombre_real": "organizacion",
    }

    tabla_relacion = {
        "nombre_real": "proyecto_por_organizacion",
    }

    # Act
    score_entidad = calculator.calcular_score(
        tokens_pregunta,
        tabla_entidad,
    )

    score_relacion = calculator.calcular_score(
        tokens_pregunta,
        tabla_relacion,
    )

    # Assert
    assert score_entidad > score_relacion