import pytest
from unittest.mock import MagicMock

# ATENCIÓN: Este import va a fallar la primera vez porque el archivo no existe. ¡Es parte del TDD!
from backend.models.slm_router import SLMRouter 

@pytest.fixture
def catalogo_prueba():
    """Un catálogo simulado, mucho más chico que el de 92 tablas."""
    return """
    T1: Datos básicos de las instituciones y organizaciones.
    T2: Proyectos y programas sociales activos.
    T45: Montos de dinero, recursos financieros y presupuestos.
    """

def test_slm_identifica_una_tabla_correctamente(mocker, catalogo_prueba):
    """Prueba que el SLM entienda una pregunta directa y devuelva 1 índice."""
    
    # 1. Mockeamos la cadena de LangChain que vivirá dentro del router
    mock_chain = MagicMock()
    # Simulamos que el modelo estructurado de LangChain devuelve un diccionario
    mock_chain.invoke.return_value = {"indices_elegidos": ["T2"]} 
    
    # Parcheamos la creación de la cadena para que use nuestro mock
    mocker.patch('backend.models.slm_router.SLMRouter._crear_cadena', return_value=mock_chain)

    # 2. Ejecutamos nuestra clase (que aún no hemos programado)
    router = SLMRouter()
    pregunta = "¿Cuántos proyectos sociales están vigentes?"
    resultados = router.obtener_indices(pregunta, catalogo_prueba)

    # 3. Afirmamos el resultado
    assert isinstance(resultados, list), "El router debe devolver una lista"
    assert len(resultados) == 1
    assert "T2" in resultados

def test_slm_identifica_multiples_tablas(mocker, catalogo_prueba):
    """Prueba que el SLM pueda asociar conceptos cruzados (JOINs implícitos)."""
    
    mock_chain = MagicMock()
    mock_chain.invoke.return_value = {"indices_elegidos": ["T1", "T45"]}
    mocker.patch('backend.models.slm_router.SLMRouter._crear_cadena', return_value=mock_chain)

    router = SLMRouter()
    pregunta = "¿Qué organizaciones reciben más presupuesto?"
    resultados = router.obtener_indices(pregunta, catalogo_prueba)

    assert len(resultados) == 2
    assert "T1" in resultados
    assert "T45" in resultados

def test_slm_pregunta_fuera_de_dominio(mocker, catalogo_prueba):
    """Prueba el comportamiento defensivo: el modelo no encuentra tablas."""
    
    mock_chain = MagicMock()
    mock_chain.invoke.return_value = {"indices_elegidos": []}
    mocker.patch('backend.models.slm_router.SLMRouter._crear_cadena', return_value=mock_chain)

    router = SLMRouter()
    pregunta = "¿Cómo preparo un mate?"
    resultados = router.obtener_indices(pregunta, catalogo_prueba)

    assert isinstance(resultados, list)
    assert len(resultados) == 0