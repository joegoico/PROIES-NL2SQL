import pytest
from unittest.mock import MagicMock

# Ajusté el import para que siga tu estándar sin "backend."
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

def test_procesar_pregunta_camino_feliz(mocker, mock_repo, esquema_falso):
    """
    FASE VERDE: Verifica que el SLM, la inyección de contexto y el LLM funcionen en cadena.
    """
    # 1. MOCKEAMOS EL SLM ROUTER 
    # (Aviso: Si Claude le puso otro nombre al método en vez de 'ruteo_tablas', cambialo acá)
    mocker.patch('service.nl2sql_service.SLMRouter.ruteo_tablas', return_value=["T1"])
    
    # 2. MOCKEAMOS EL LLM (Generador SQL)
    # (Aviso: Acá asumo que Claude creó un método interno. Ajustalo según tu código)
    mocker.patch('service.nl2sql_service.NL2SQLService._generar_sql', return_value="SELECT * FROM organizaciones;")

    # 3. EJECUTAMOS LA ACCIÓN
    servicio = NL2SQLService(repo=mock_repo)
    
    # ¡EL ARREGLO ESTÁ ACÁ!: Le pasamos el esquema por parámetro
    resultado = servicio.procesar_pregunta("¿Cuáles son las organizaciones?", esquema=esquema_falso)

    # 4. AFIRMACIONES (Asserts)
    assert "SELECT * FROM organizaciones" in resultado["sql_generado"]
    assert len(resultado["resultados"]) == 1
    assert resultado["resultados"][0]["nombre"] == "Asociación Civil Prueba"

def test_procesar_pregunta_slm_no_encuentra_tablas(mocker, mock_repo, esquema_falso):
    """
    FASE ROJA -> VERDE: Qué pasa si el SLM se confunde y devuelve una lista vacía.
    """
    # Simulamos que el SLM no supo qué elegir
    mocker.patch('service.nl2sql_service.SLMRouter.ruteo_tablas', return_value=[])

    servicio = NL2SQLService(repo=mock_repo)

    # Afirmamos que el código DEBE lanzar un ValueError
    with pytest.raises(ValueError) as excinfo:
        # ¡EL ARREGLO ESTÁ ACÁ TAMBIÉN!
        servicio.procesar_pregunta("Hablame del clima en Tandil", esquema=esquema_falso)
    
    # Verificamos que el mensaje de error sea correcto
    assert "no pudo identificar" in str(excinfo.value).lower() or "tablas" in str(excinfo.value).lower()