import pytest
from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker
from backend.repositories.db_repository import DBRepository
import os
from dotenv import load_dotenv

load_dotenv()

DB_PASS = os.getenv("DATABASE_PASSWORD")

# 1. Configuramos una conexión real (idealmente a una base de datos de test)
# URL de ejemplo, se debería sacar de variables de entorno
TEST_DATABASE_URL = "postgresql://postgres:" + DB_PASS + "@localhost:5433/practica_investigacion_test"

engine = create_engine(TEST_DATABASE_URL)
TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

@pytest.fixture
def db_session():
    """Fixture que crea una sesión real y hace rollback al final."""
    connection = engine.connect()
    transaction = connection.begin()
    session = TestingSessionLocal(bind=connection)
    
    # Creamos una tabla temporal solo para el test
    session.execute(text("""
        CREATE TABLE IF NOT EXISTS test_organizaciones (
            id serial PRIMARY KEY,
            nombre VARCHAR(255)
        );
        INSERT INTO test_organizaciones (nombre) VALUES ('ONG Test de Integracion');
    """))
    session.commit()

    yield session  # Acá se ejecuta el test

    # Limpieza post-test: Borramos la tabla temporal
    session.execute(text("DROP TABLE test_organizaciones;"))
    session.commit()
    session.close()
    transaction.rollback()
    connection.close()

def test_ejecutarSQL_SQLValido_Exito(db_session):
    """Prueba que el repositorio pueda hablar con PostgreSQL y traer datos reales."""
    repo = DBRepository(db=db_session)
    
    # Le pasamos un SQL real
    sql_limpio = "SELECT * FROM test_organizaciones;"
    resultados = repo.ejecutar_consulta(sql_limpio)
    
    assert len(resultados) == 1
    assert resultados[0]["nombre"] == "ONG Test de Integracion"

def test_ejecutarSQL_SQLInvalido_LanzarError(mocker):
    # Simula una sesión que lanza excepción al ejecutar cualquier SQL
    mock_db = mocker.MagicMock()
    mock_db.execute.side_effect = Exception("error de sintaxis")

    repo = DBRepository(db=mock_db)

    with pytest.raises(ValueError) as excinfo:
        repo.ejecutar_consulta("CUALQUIER COSA ROTA")

    assert "Error ejecutando SQL" in str(excinfo.value)