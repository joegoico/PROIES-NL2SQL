from fastapi.testclient import TestClient
from backend.main import app
import pytest


class MockSLMRouter:
    def obtener_indices(self, pregunta: str, catalogo: str):

        if pregunta == "organizaciones_fail":
            raise ValueError("Error interno simulado por el Mock")

        return ["T_1"]

app.state.slm_router = MockSLMRouter()
app.state.llm_generator = object()
app.state.esquema_maestro = {
    "T1": {
        "nombre_real": "organizaciones",
        "descripcion_tabla": "Organizaciones sociales registradas",
        "columnas": {
            "nombre": "Nombre de la organización"
        },
        "ddl": (
            "CREATE TABLE organizaciones (\n"
            "    id INTEGER,\n"
            "    nombre TEXT\n"
            ");"
        ),
    }
}


client = TestClient(app)


def test_ask_database_success():
    payload = {"pregunta": "¿Cuántas organizaciones hay?"}

    response = client.post("/api/ask", json=payload)


    assert response.status_code == 200


def test_ask_database_service_error(mocker):

    mock_procesar = mocker.patch(
        "backend.controllers.nl2sql_controller.NL2SQLService.procesar_pregunta",
        side_effect=ValueError("Error interno simulado por el Mock"),
    )

    payload = {"pregunta": "fail"}

    response = client.post("/api/ask", json=payload)

    assert response.status_code == 422

    assert response.json()["detail"] == "Error interno simulado por el Mock"

    mock_procesar.assert_called_once()


def test_ask_database_invalid_payload():
    payload = {"question": "¿Cuántas organizaciones hay?"}
    response = client.post("/api/ask", json=payload)

    assert response.status_code == 422
