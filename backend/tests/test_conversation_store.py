import threading

import pytest

from backend.custom.conversation_store import ConversationStore


@pytest.fixture
def store():
    return ConversationStore()


def test_historial_de_conversacion_inexistente_es_lista_vacia(store):
    # Arrange
    conversation_id = "conv-1"

    # Act
    historial = store.obtener_historial(conversation_id)

    # Assert
    assert historial == []


def test_agregar_pregunta_la_guarda_en_orden_cronologico(store):
    # Arrange
    primera = "¿Cuántas organizaciones hay?"
    segunda = "¿Y cuántas están activas?"

    # Act
    store.agregar_pregunta("conv-1", primera)
    store.agregar_pregunta("conv-1", segunda)

    # Assert
    assert store.obtener_historial("conv-1") == [primera, segunda]


def test_conversaciones_son_independientes(store):
    # Arrange
    store.agregar_pregunta("conv-1", "pregunta uno")

    # Act
    store.agregar_pregunta("conv-2", "pregunta dos")

    # Assert
    assert store.obtener_historial("conv-1") == ["pregunta uno"]
    assert store.obtener_historial("conv-2") == ["pregunta dos"]


def test_limite_por_defecto_es_10_y_descarta_las_mas_antiguas(store):
    # Arrange
    total_preguntas = 12

    # Act
    for i in range(1, total_preguntas + 1):
        store.agregar_pregunta("conv-1", f"pregunta {i}")
    historial = store.obtener_historial("conv-1")

    # Assert
    assert len(historial) == 10
    assert historial[0] == "pregunta 3"
    assert historial[-1] == "pregunta 12"


def test_limite_es_configurable():
    # Arrange
    store = ConversationStore(max_preguntas=2)

    # Act
    for i in range(1, 4):
        store.agregar_pregunta("conv-1", f"pregunta {i}")

    # Assert
    assert store.obtener_historial("conv-1") == ["pregunta 2", "pregunta 3"]


def test_obtener_historial_devuelve_copia_no_modifica_el_store(store):
    # Arrange
    store.agregar_pregunta("conv-1", "pregunta uno")

    # Act
    historial = store.obtener_historial("conv-1")
    historial.append("intruso")

    # Assert
    assert store.obtener_historial("conv-1") == ["pregunta uno"]


@pytest.mark.parametrize("conversation_id", ["", "   ", None])
def test_conversation_id_invalido_lanza_value_error(store, conversation_id):
    # Arrange
    pregunta = "pregunta"

    # Act + Assert
    with pytest.raises(ValueError):
        store.agregar_pregunta(conversation_id, pregunta)


@pytest.mark.parametrize("pregunta", ["", "   ", None])
def test_pregunta_vacia_lanza_value_error(store, pregunta):
    # Arrange
    conversation_id = "conv-1"

    # Act + Assert
    with pytest.raises(ValueError):
        store.agregar_pregunta(conversation_id, pregunta)


def test_max_preguntas_invalido_lanza_value_error():
    # Arrange
    max_preguntas = 0

    # Act + Assert
    with pytest.raises(ValueError):
        ConversationStore(max_preguntas=max_preguntas)


def test_agregar_preguntas_concurrentemente_respeta_el_limite(store):
    # Arrange
    def worker(n):
        for i in range(50):
            store.agregar_pregunta("conv-1", f"hilo {n} pregunta {i}")

    hilos = [threading.Thread(target=worker, args=(n,)) for n in range(8)]

    # Act
    for h in hilos:
        h.start()
    for h in hilos:
        h.join()

    # Assert
    assert len(store.obtener_historial("conv-1")) == 10
