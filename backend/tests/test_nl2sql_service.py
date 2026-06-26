import pytest
from unittest.mock import MagicMock

# Ajusté el import para que siga tu estándar sin "backend."
from backend.models.slm_router import SLMRouter
from service.nl2sql_service import NL2SQLService
from repositories.db_repository import DBRepository


# --- 1. PREPARACIÓN DEL ESCENARIO (Fixture) ---
@pytest.fixture
def mock_repo():
    """Crea un repositorio de base de datos falso."""
    repo = MagicMock(spec=DBRepository)
    repo.ejecutar_consulta.return_value = [{"id": 1, "nombre": "Asociación Civil Prueba"}]
    return repo

@pytest.fixture
def esquema_falso():
    """Un mini-diccionario en memoria para no depender del master_schema.json real."""
    return {
        "T1": {
            "nombre_real": "organizaciones",
            "descripcion_tabla": "Datos básicos",
            "columnas": {"id_org": "PK", "nombre": "Nombre de ONG"}
        },
        "T2": {
            "nombre_real": "proyectos",
            "descripcion_tabla": "Proyectos activos",
            "columnas": {"id_proyecto": "PK", "estado": "Activo o Inactivo"}
        }
    }

# --- 2. LOS TESTS (TDD) ---

def test_procesar_pregunta_camino_feliz(mocker):
    # Arrange
    mock_router = mocker.MagicMock()
    mock_router.obtener_indices.return_value = ["T_1", "T_3"]

    mocker.patch(
        "backend.service.nl2sql_service.SchemaPrefilter.obtener_indices",
        return_value=["T_3"]
    )

    servicio = NL2SQLService(router=mock_router)

    esquema = {
        "T_1": {
            "nombre_real": "organizaciones",
            "descripcion_tabla": "Organizaciones sociales",
            "columnas": {
                "nombre": "Nombre de la organización",
            },
            "ddl": "CREATE TABLE org (...)",
        },
        "T_2": {
            "nombre_real": "proyectos",
            "descripcion_tabla": "Proyectos activos",
            "columnas": {
                "estado": "Estado del proyecto",
            },
            "ddl": "CREATE TABLE proyectos (...)",
        },
        "T_3": {
            "nombre_real": "donaciones",
            "descripcion_tabla": "Registro de donaciones",
            "columnas": {
                "monto": "Monto donado",
            },
            "ddl": "CREATE TABLE donaciones (...)",
        },
    }

    # Act
    resultado = servicio.procesar_pregunta(
        "¿Cuántas donaciones hay?",
        esquema,
    )

    # Assert
    assert resultado["pregunta"] == "¿Cuántas donaciones hay?"
    assert resultado["tablas_seleccionadas"] == ["T_1", "T_3"]
    assert resultado["sql_generado"] is None
    assert resultado["resultado"] is None

    mock_router.obtener_indices.assert_called_once()

def test_procesar_pregunta_prefilter_no_encuentra_tablas(
    mocker,
    esquema_falso,
):
    # Arrange
    mock_router = mocker.MagicMock(spec=SLMRouter)

    mocker.patch(
        "backend.service.nl2sql_service.SchemaPrefilter.obtener_indices",
        return_value=[],
    )

    servicio = NL2SQLService(router=mock_router)

    # Act + Assert
    with pytest.raises(ValueError) as excinfo:
        servicio.procesar_pregunta(
            "Hablame del clima en Tandil",
            esquema_falso,
        )

    assert str(excinfo.value) == (
        "El prefilter no pudo identificar tablas relevantes para la pregunta."
    )

    mock_router.obtener_indices.assert_not_called()