# backend/tests/test_score_calculators.py

from backend.service.score_calculator import (
    normalizar_texto,
    CalcularScoreNombreTabla,
    CalcualrScoreDescripcionTabla,
    CalcularScoreNombreColumna,
    CalcularScoreDescripcionColumna,
    normalizar_texto,
    BONUS_MATCH_EXACTO_NOMBRE_TABLA,
    PESO_NOMBRE_TABLA,
    PESO_DESCRIPCION_TABLA,
    PESO_NOMBRE_COLUMNA,
    PESO_DESCRIPCION_COLUMNA,
)


def tabla_mock():
    return {
        "nombre_real": "organizaciones",
        "descripcion_tabla": "ONGs y asociaciones civiles",
        "columnas": {
            "nombre": "Nombre de la organización",
            "presupuesto": "Presupuesto anual",
        },
    }


def test_calcular_score_nombre_tabla_match():
    # Arrange
    calculator = CalcularScoreNombreTabla()
    tokens = normalizar_texto("organizaciones")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == PESO_NOMBRE_TABLA + BONUS_MATCH_EXACTO_NOMBRE_TABLA


def test_calcular_score_nombre_tabla_sin_match():
    # Arrange
    calculator = CalcularScoreNombreTabla()
    tokens = normalizar_texto("donaciones")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == 0


def test_calcular_score_descripcion_tabla_match():
    # Arrange
    calculator = CalcualrScoreDescripcionTabla()
    tokens = normalizar_texto("asociaciones")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == PESO_DESCRIPCION_TABLA


def test_calcular_score_descripcion_tabla_sin_match():
    # Arrange
    calculator = CalcualrScoreDescripcionTabla()
    tokens = normalizar_texto("donaciones")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == 0


def test_calcular_score_nombre_columna_match_nombre_columna():
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens = normalizar_texto("presupuesto")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == PESO_NOMBRE_COLUMNA


def test_calcular_score_nombre_columna_match_descripcion_columna():
    # Arrange
    calculator = CalcularScoreDescripcionColumna()
    tokens = normalizar_texto("anual")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == PESO_DESCRIPCION_COLUMNA


def test_calcular_score_nombre_columna_sin_match():
    # Arrange
    calculator = CalcularScoreNombreColumna()
    tokens = normalizar_texto("auditoria")

    # Act
    score = calculator.calcular_score(tokens, tabla_mock())

    # Assert
    assert score == 0

def test_calculators_acumulan_multiples_matches():
    # Arrange
    calculator = CalcularScoreDescripcionColumna()
    cal_col = CalcularScoreNombreColumna()

    tabla = {
        "columnas": {
            "presupuesto": "Presupuesto anual",
        }
    }

    tokens_descr = normalizar_texto("presupuesto anual")
    tokens_nombre = normalizar_texto("presupuesto")

    # Act
    score = calculator.calcular_score(tokens_descr, tabla) + cal_col.calcular_score(tokens_nombre, tabla)

    # Assert
    assert score == (
        PESO_NOMBRE_COLUMNA +
        2*PESO_DESCRIPCION_COLUMNA
    )
    def test_calcular_score_nombre_tabla_match_exacto():
        # Arrange
        calculator = CalcularScoreNombreTabla()

        tokens_pregunta = {"organizacion"}

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

    def test_calcular_score_nombre_tabla_match_parcial_no_recibe_bonus():
        # Arrange
        calculator = CalcularScoreNombreTabla()

        tokens_pregunta = {"organizacion"}

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

    def test_calcular_score_nombre_tabla_sin_match():
        # Arrange
        calculator = CalcularScoreNombreTabla()

        tokens_pregunta = {"organizacion"}

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

    def test_calcular_score_nombre_tabla_match_exacto_nombre_compuesto():
        # Arrange
        calculator = CalcularScoreNombreTabla()

        tokens_pregunta = {
            "demandas",
            "organizacion",
        }

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