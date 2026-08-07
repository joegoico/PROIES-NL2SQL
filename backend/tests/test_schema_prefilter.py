import pytest
from backend.utils.text_utils import TextUtils
from backend.custom.schema_prefilter import SchemaPrefilter

@pytest.fixture
def esquema_mock():
    return {
        "T1": {
            "nombre_real": "organizaciones",
            "descripcion_tabla": "ONGs y asociaciones civiles",
            "columnas": {
                "nombre": "Nombre de la organización",
                "presupuesto": "Presupuesto anual",
            },
        },
        "T2": {
            "nombre_real": "donaciones",
            "descripcion_tabla": "Registro de donaciones",
            "columnas": {
                "monto": "Monto donado",
                "fecha": "Fecha de la donación",
            },
        },
        "T3": {
            "nombre_real": "auditorias",
            "descripcion_tabla": "Auditorías internas",
            "columnas": {
                "resultado": "Resultado de auditoría",
            },
        },
    }

@pytest.fixture
def text_utils():
    return TextUtils()
def test_schema_prefilter_encuentra_tablas_relevantes(esquema_mock):
    #Arrange
    prefilter = SchemaPrefilter()
    pregunta = "¿Cuántas donaciones hay?"
    #Act
    resultados = prefilter.obtener_indices(pregunta, esquema_mock)
    #Assert
    assert "T2" in resultados

def test_schema_prefilter_ignora_tablas_irrelevantes(esquema_mock, text_utils):
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = "¿Cuántas donaciones hay?"

    # Act
    resultados = prefilter.obtener_indices(
        pregunta,
        esquema_mock,
    )

    print("RESULTADOS:", resultados)

    for indice, tabla in esquema_mock.items():
        score = prefilter._calcular_score_tabla(
            tokens_pregunta=text_utils.normalizar_texto(pregunta),
            tabla=tabla,
        )
        print(indice, score)

    # Assert
    assert "T1" not in resultados
    assert "T3" not in resultados
    assert len(resultados) == 1
    assert "T2" in resultados

def test_schema_prefilter_maneja_pregunta_vacia(esquema_mock):
    #Arrange
    prefilter = SchemaPrefilter()
    pregunta =""

    #Assert
    with pytest.raises(ValueError):
        prefilter.obtener_indices(pregunta, esquema_mock)

def test_schema_prefilter_debe_respetar_topk(esquema_mock):
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = "organizaciones donaciones auditorias"

    # Act
    resultados = prefilter.obtener_indices(
        pregunta,
        esquema_mock,
        top_k=2,
    )

    # Assert
    assert len(resultados) == 2

def test_schema_prefilter_debe_ser_case_insensitive(esquema_mock):
    # Arrange
    prefilter = SchemaPrefilter()
    pregunta = "¿Cuántas DONACIONES hay?"

    # Act
    resultados = prefilter.obtener_indices(pregunta, esquema_mock)

    # Assert
    assert "T2" in resultados

def test_schema_prefilter_ignora_acentos(esquema_mock):
    prefilter = SchemaPrefilter()

    pregunta = "auditoria"

    esquema = {
        "T1": {
            "nombre_real": "auditoría",
            "descripcion_tabla": "",
            "columnas": {},
        }
    }

    resultados = prefilter.obtener_indices(
        pregunta,
        esquema,
    )

    assert "T1" in resultados
def test_prefilter_reconoce_error_tipografico():
    ...
    #Assert
    prefilter = SchemaPrefilter()
    pregunta = "organizacin"
    esquema = {
        "T1": {
            "nombre_real": "organización",
            "descripcion_tabla": "",
            "columnas": {},
        }
    }

    #Act
    resultados = prefilter.obtener_indices(pregunta, esquema)

    assert "T1" in resultados

def test_prefilter_reconoce_plural():
    ...
    prefilter = SchemaPrefilter()
    pregunta = "organizaciones"
    esquema = {
        "T1": {
            "nombre_real": "organización",
            "descripcion_tabla": "",
            "columnas": {},
        }
    }

    resultados = prefilter.obtener_indices(pregunta, esquema)

    assert "T1" in resultados

def test_prefilter_no_confunde_palabras_distintas(esquema_mock):
    ...
    prefilter = SchemaPrefilter()
    pregunta = "presupuesto"
    resultados = prefilter.obtener_indices(pregunta, esquema_mock)

    assert "T1" in resultados
    assert "T3" not in resultados

def test_schema_prefilter_maneja_esquema_vacio():
    # Arrange
    prefilter = SchemaPrefilter()

    # Assert
    with pytest.raises(ValueError):
        prefilter.obtener_indices(
            "donaciones",
            {},
        )
