import pytest
from unittest.mock import MagicMock

from backend.service.nl2sql_service import NL2SQLService
from repositories.db_repository import DBRepository

# --- 1. PREPARACIÓN DEL ESCENARIO (Fixture) ---
@pytest.fixture
def mock_repo():
    """Crea un repositorio de base de datos falso."""
    repo = MagicMock(spec=DBRepository)
    # Le decimos qué devolver cuando alguien llame a ejecutar_consulta
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

def test_procesar_pregunta_camino_feliz(mocker, mock_repo, esquema_falso):
    """
    FASE VERDE: Verifica que el SLM, la inyección de contexto y el LLM funcionen en cadena.
    """
    # 1. Secuestramos el diccionario global del servicio y le ponemos el nuestro
    mocker.patch('backend.service.nl2sql_service.esquema_en_memoria', esquema_falso)
    
    # 2. MOCKEAMOS EL SLM (Router)
    # Simulamos que LangChain devuelve un objeto con la propiedad 'indices_elegidos'
    mock_slm_result = MagicMock()
    mock_slm_result.indices_elegidos = ["T1"]
    # Reemplazamos la función 'invoke' de tu chain del SLM
    mocker.patch('backend.service.nl2sql_service.table_chain.invoke', return_value=mock_slm_result)
    
    # 3. MOCKEAMOS EL LLM (Generador SQL)
    # Simulamos que el modelo grande genera este texto
    mocker.patch('backend.service.nl2sql_service.query_chain.invoke', return_value="```sql\nSELECT * FROM organizaciones;\n```")

    # 4. EJECUTAMOS LA ACCIÓN
    servicio = NL2SQLService(repo=mock_repo)
    resultado = servicio.procesar_pregunta("¿Cuáles son las organizaciones?")

    # 5. AFIRMACIONES (Asserts) - ¿Pasó lo que esperábamos?
    assert resultado["sql_generado"] == "SELECT * FROM organizaciones;"
    assert len(resultado["resultados"]) == 1
    assert resultado["resultados"][0]["nombre"] == "Asociación Civil Prueba"
    
    # Verificamos que el repositorio falso haya sido llamado con el SQL limpio
    mock_repo.ejecutar_consulta.assert_called_once_with("SELECT * FROM organizaciones;")


def test_procesar_pregunta_slm_no_encuentra_tablas(mocker, mock_repo, esquema_falso):
    """
    FASE ROJA -> VERDE: Qué pasa si el SLM se confunde y devuelve una lista vacía.
    """
    mocker.patch('backend.service.nl2sql_service.esquema_en_memoria', esquema_falso)
    
    # Simulamos que el SLM no supo qué elegir
    mock_slm_result = MagicMock()
    mock_slm_result.indices_elegidos = [] 
    mocker.patch('backend.service.nl2sql_service.table_chain.invoke', return_value=mock_slm_result)

    servicio = NL2SQLService(repo=mock_repo)

    # Afirmamos que el código DEBE lanzar un ValueError
    with pytest.raises(ValueError) as excinfo:
        servicio.procesar_pregunta("Hablame del clima en Tandil") # Pregunta fuera de dominio
    
    # Verificamos el mensaje de error
    assert "no pudo identificar tablas relevantes" in str(excinfo.value).lower()