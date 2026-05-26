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
    # 1. Mock del router
    mock_router = mocker.MagicMock()
    mock_router.obtener_indices.return_value = ["T_1", "T_3"]  # índices que debe devolver

    # 2. Instanciar el servicio con el router mockeado (NO repo=)
    servicio = NL2SQLService(router=mock_router)

    # 3. Esquema maestro de prueba
    esquema = {
        "T_1": {"ddl": "CREATE TABLE org (...)", "descripcion": "organizaciones"},
        "T_2": {"ddl": "CREATE TABLE proyectos (...)", "descripcion": "proyectos"},
        "T_3": {"ddl": "CREATE TABLE donaciones (...)", "descripcion": "donaciones"},
    }

    # 4. Ejecutar
    resultado = servicio.procesar_pregunta("¿Cuántas donaciones hay?", esquema)

    # 5. Verificar
    assert resultado["tablas_seleccionadas"] == ["T_1", "T_3"]
    assert "T_1" in resultado["ddls_relevantes"]
    assert "T_3" in resultado["ddls_relevantes"]
    assert resultado["sql_generado"] is None  # todavía no implementado
    mock_router.obtener_indices.assert_called_once_with(
        pregunta="¿Cuántas donaciones hay?",
        catalogo=mocker.ANY  # o podrías verificar el catálogo construido
    )

def test_procesar_pregunta_slm_no_encuentra_tablas(mocker, mock_repo, esquema_falso):
    mock_router = mocker.MagicMock(spec=SLMRouter)
    # Forzamos que devuelva lista vacía
    mock_router.obtener_indices.return_value = []
    
    servicio = NL2SQLService(router=mock_router)
    # ... resto del test

    # Afirmamos que el código DEBE lanzar un ValueError
    with pytest.raises(ValueError) as excinfo:
        # ¡EL ARREGLO ESTÁ ACÁ TAMBIÉN!
        servicio.procesar_pregunta("Hablame del clima en Tandil", esquema_falso)
    
    # Verificamos que el mensaje de error sea correcto
    assert "no pudo identificar" in str(excinfo.value).lower() or "tablas" in str(excinfo.value).lower()