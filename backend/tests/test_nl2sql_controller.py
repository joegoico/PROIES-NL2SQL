from fastapi.testclient import TestClient
from backend.main import app


class MockSLMRouter:
    def obtener_indices(self, pregunta: str, catalogo: str):
        if pregunta == "fail":
            raise ValueError("Error interno simulado por el Mock")
        return ["T_1"]


app.state.slm_router = MockSLMRouter()
app.state.llm_generator = object()
app.state.esquema_maestro = {
    "T_1": {
        "nombre_tabla": "organizaciones",
        "comentario_tabla": "Organizaciones sociales registradas",
        "ddl": (
            "CREATE TABLE organizaciones (\n"
            "    id INTEGER,\n"
            "    nombre TEXT -- Nombre de la organizacion\n"
            ");"
        ),
    }
}


client = TestClient(app)


def test_ask_database_success():
    payload = {"pregunta": "¿Cuántas organizaciones hay?"}
    response = client.post("/api/ask", json=payload)

    assert response.status_code == 200
    data = response.json()
    assert data["pregunta"] == "¿Cuántas organizaciones hay?"
    assert data["tablas_seleccionadas"] == ["T_1"]
    assert data["ddls_relevantes"]["T_1"] == app.state.esquema_maestro["T_1"]["ddl"]
    assert data["sql_generado"] is None
    assert data["resultado"] is None


def test_ask_database_service_error():
    payload = {"pregunta": "fail"}
    response = client.post("/api/ask", json=payload)

    assert response.status_code == 422
    data = response.json()
    assert data["detail"] == "Error interno simulado por el Mock"


def test_ask_database_invalid_payload():
    payload = {"question": "¿Cuántas organizaciones hay?"}
    response = client.post("/api/ask", json=payload)

    assert response.status_code == 422
