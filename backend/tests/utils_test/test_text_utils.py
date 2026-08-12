import pytest

from backend.utils.text_utils import TextUtils


@pytest.fixture
def text_utils():
    return TextUtils()


def test_normalizar_texto_convierte_a_minusculas(text_utils):
    # Arrange
    texto = "ORGANIZACION"

    # Act
    resultado = text_utils.normalizar_texto(texto)

    # Assert
    assert resultado == {"organizacion"}


def test_normalizar_texto_elimina_acentos(text_utils):
    # Arrange
    texto = "organización auditoría"

    # Act
    resultado = text_utils.normalizar_texto(texto)

    # Assert
    assert resultado == {"organizacion", "auditoria"}


def test_normalizar_texto_separa_guion_bajo(text_utils):
    # Arrange
    texto = "entidades_aportantes"

    # Act
    resultado = text_utils.normalizar_texto(texto)

    # Assert
    assert resultado == {"entidades", "aportantes"}


def test_normalizar_texto_elimina_puntuacion(text_utils):
    # Arrange
    texto = "¿Organización, proyectos?"

    # Act
    resultado = text_utils.normalizar_texto(texto)

    # Assert
    assert resultado == {"organizacion", "proyectos"}


def test_normalizar_texto_elimina_stopwords(text_utils):
    # Arrange
    texto = "cuantas organizaciones hay en la ciudad"

    # Act
    resultado = text_utils.normalizar_texto(texto)

    # Assert
    assert resultado == {"organizaciones", "ciudad"}


def test_son_similares_devuelve_similitud_alta_para_error_tipografico(text_utils):
    # Arrange
    token1 = "organizacion"
    token2 = "organizacin"

    # Act
    similitud = text_utils.son_similares(token1, token2)

    # Assert
    assert similitud >= text_utils.UMBRAL_SIMILITUD


def test_son_similares_devuelve_similitud_baja_para_palabras_distintas(text_utils):
    # Arrange
    token1 = "organizacion"
    token2 = "proyecto"

    # Act
    similitud = text_utils.son_similares(token1, token2)

    # Assert
    assert similitud < text_utils.UMBRAL_SIMILITUD


def test_contar_matches_cuenta_match_exacto(text_utils):
    # Arrange
    tokens_pregunta = text_utils.normalizar_texto("organizacion")
    tokens_tabla = text_utils.normalizar_texto("organizacion")

    # Act
    resultado = text_utils.contar_matches(
        tokens_pregunta,
        tokens_tabla,
    )

    # Assert
    assert resultado == 1


def test_contar_matches_cuenta_match_fuzzy(text_utils):
    # Arrange
    tokens_pregunta = {"organizacin"}
    tokens_tabla = {"organizacion"}

    # Act
    resultado = text_utils.contar_matches(
        tokens_pregunta,
        tokens_tabla,
    )

    # Assert
    assert resultado == 1


def test_contar_matches_no_cuenta_palabras_distintas(text_utils):
    # Arrange
    tokens_pregunta = {"organizacion"}
    tokens_tabla = {"proyecto"}

    # Act
    resultado = text_utils.contar_matches(
        tokens_pregunta,
        tokens_tabla,
    )

    # Assert
    assert resultado == 0


def test_contar_matches_cuenta_varios_tokens(text_utils):
    # Arrange
    tokens_pregunta = {
        "organizacion",
        "proyecto",
        "activo",
    }

    tokens_tabla = {
        "organizacion",
        "proyecto",
    }

    # Act
    resultado = text_utils.contar_matches(
        tokens_pregunta,
        tokens_tabla,
    )

    # Assert
    assert resultado == 2


def test_contar_matches_no_cuenta_dos_veces_el_mismo_token_pregunta(text_utils):
    # Arrange
    tokens_pregunta = {"organizacion"}

    tokens_tabla = {
        "organizacion",
        "organizacin",
    }

    # Act
    resultado = text_utils.contar_matches(
        tokens_pregunta,
        tokens_tabla,
    )

    # Assert
    assert resultado == 1


def test_es_tabla_relacion_detecta_patron_por(text_utils):
    # Arrange
    nombre = "proyecto_por_organizacion"

    # Act
    resultado = text_utils._es_tabla_relacion(nombre)

    # Assert
    assert resultado is True


def test_es_tabla_relacion_detecta_patron_x(text_utils):
    # Arrange
    nombre = "identidad_x_organizacion"

    # Act
    resultado = text_utils._es_tabla_relacion(nombre)

    # Assert
    assert resultado is True


def test_es_tabla_relacion_detecta_patron_relacionada(text_utils):
    # Arrange
    nombre = "proyecto_relacionada"

    # Act
    resultado = text_utils._es_tabla_relacion(nombre)

    # Assert
    assert resultado is True


def test_es_tabla_relacion_devuelve_false_para_tabla_entidad(text_utils):
    # Arrange
    nombre = "organizacion"

    # Act
    resultado = text_utils._es_tabla_relacion(nombre)

    # Assert
    assert resultado is False

def test_normalizar_texto_no_aplica_stemming(text_utils):
    # Arrange
    texto = "organizaciones aportantes provenientes"

    # Act
    resultado = text_utils.normalizar_texto(texto)

    # Assert
    assert resultado == {
        "organizaciones",
        "aportantes",
        "provenientes",
    }

def test_contar_matches_reconoce_singular_plural(text_utils):
    # Arrange
    tokens_pregunta = {"organizaciones"}
    tokens_tabla = {"organizacion"}

    # Act
    matches = text_utils.contar_matches(
        tokens_pregunta,
        tokens_tabla,
    )

    # Assert
    assert matches == 1