import pytest
from fastapi.testclient import TestClient

# Asumiendo que tu instancia de FastAPI se llama 'app' y está en main.py
from backend.main import app 
from backend.service.nl2sql_service import NL2SQLService

# --- 1. Armamos el Mock del Servicio ---
# Este servicio "falso" no usa LangChain ni PostgreSQL.
# Solo devuelve datos predecibles para ver cómo reacciona el Controller.
class MockNL2SQLService:
    def procesar_pregunta(self, pregunta: str):
        # Simulamos un error si la pregunta es la palabra clave "fail"
        if pregunta == "fail":
            raise ValueError("Error interno simulado por el Mock")
        
        # Camino feliz
        return {
            "sql_generado": "SELECT * FROM organizaciones;",
            "resultados": [{"id": 1, "nombre": "ONG de Prueba"}]
        }

# --- 2. Inyectamos el Mock en FastAPI ---
# Le decimos a la app: "Cuando el controller pida un NL2SQLService, dale nuestro Mock"
app.dependency_overrides[NL2SQLService] = MockNL2SQLService

# --- 3. Instanciamos el cliente de pruebas ---
client = TestClient(app)

# --- 4. LOS TESTS ---

def test_ask_database_success():
    """Prueba el camino feliz: petición correcta y servicio respondiendo bien."""
    payload = {"question": "¿Cuántas organizaciones hay?"}
    response = client.post("/ask", json=payload)
    
    assert response.status_code == 200
    data = response.json()
    assert data["status"] == "success"
    assert data["data"]["sql_generado"] == "SELECT * FROM organizaciones;"
    assert data["data"]["resultados"][0]["nombre"] == "ONG de Prueba"

def test_ask_database_service_error():
    """Prueba cómo reacciona el Controller si el Servicio tira una excepción."""
    payload = {"question": "fail"}
    response = client.post("/ask", json=payload)
    
    # El Controller debería atrapar el raise ValueError y convertirlo en HTTP 500
    assert response.status_code == 500
    data = response.json()
    assert data["detail"] == "Error interno simulado por el Mock"

def test_ask_database_invalid_payload():
    """Prueba la validación automática de Pydantic."""
    # Le mandamos un JSON con una llave incorrecta ('pregunta' en vez de 'question')
    payload = {"pregunta": "¿Cuántas organizaciones hay?"}
    response = client.post("/ask", json=payload)
    
    # FastAPI debería rebotarlo antes de llegar al servicio con un Unprocessable Entity (422)
    assert response.status_code == 422