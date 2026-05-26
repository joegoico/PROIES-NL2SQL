import pytest
from unittest.mock import MagicMock

# ATENCIÓN: Fase Roja. Este módulo aún no existe.
from models.llm_generator import LLMGenerator

@pytest.fixture
def contexto_detallado():
    """Un string que simula el DDL inyectado después del ruteo."""
    return """
    Tabla: organizaciones
    Descripción: Datos básicos y contacto de las ONGs.
    Columnas:
      - id_org: PK
      - nombre: Nombre oficial
    """

def test_generar_sql_limpia_etiquetas_markdown(mocker, contexto_detallado):
    """Prueba CRÍTICA: Verifica que el generador quite los backticks (```sql)."""
    
    # 1. Mockeamos la cadena para que devuelva el clásico formato sucio del LLM
    mock_chain = MagicMock()
    mock_chain.invoke.return_value = "```sql\nSELECT * FROM organizaciones;\n```"
    mocker.patch('models.llm_generator.LLMGenerator._crear_cadena', return_value=mock_chain)

    # 2. Ejecutamos nuestra clase fantasma
    generador = LLMGenerator()
    pregunta = "¿Cuáles son las organizaciones?"
    sql_resultado = generador.generar_sql(pregunta, contexto_detallado)

    # 3. Afirmamos que el SQL está completamente limpio
    assert "```sql" not in sql_resultado
    assert "```" not in sql_resultado
    assert sql_resultado.strip() == "SELECT * FROM organizaciones;"


def test_generar_sql_camino_feliz(mocker, contexto_detallado):
    """Verifica que el generador devuelva un string válido si el LLM se porta bien."""
    
    mock_chain = MagicMock()
    # Acá simulamos que el LLM ya devolvió el texto limpio
    mock_chain.invoke.return_value = "SELECT nombre FROM organizaciones;"
    mocker.patch('models.llm_generator.LLMGenerator._crear_cadena', return_value=mock_chain)

    generador = LLMGenerator()
    sql_resultado = generador.generar_sql("Dime los nombres", contexto_detallado)

    assert sql_resultado == "SELECT nombre FROM organizaciones;"


def test_generar_sql_sin_contexto_lanza_error(mocker):
    """Comportamiento defensivo: No gastar tokens si no hay tablas seleccionadas."""
    
    mock_chain = MagicMock()
    mocker.patch('models.llm_generator.LLMGenerator._crear_cadena', return_value=mock_chain)

    generador = LLMGenerator()
    pregunta = "¿Cuántos proyectos hay?"
    contexto_vacio = ""

    # Afirmamos que el código debe frenar antes de llamar a LangChain
    with pytest.raises(ValueError) as excinfo:
        generador.generar_sql(pregunta, contexto_vacio)
    
    assert "El contexto del esquema no puede estar vacío" in str(excinfo.value)
    # Verificamos que LangChain NUNCA haya sido llamado (ahorro de tokens)
    mock_chain.invoke.assert_not_called()

def test_corregir_sql_exito(mocker, contexto_detallado):
    """
    Prueba el bucle de reflexión: El LLM recibe un SQL roto y el error de la DB, 
    y debe devolver el SQL arreglado.
    """
    # 1. Mockeamos una SEGUNDA cadena exclusiva para corrección
    mock_correction_chain = MagicMock()
    # El LLM se da cuenta de que la columna era id_org y no id_organizacion
    mock_correction_chain.invoke.return_value = "SELECT id_org FROM organizaciones;"
    mocker.patch('models.llm_generator.LLMGenerator._crear_cadena_correccion', return_value=mock_correction_chain)

    generador = LLMGenerator()
    sql_malo = "SELECT id_organizacion FROM organizaciones;"
    error_postgres = 'column "id_organizacion" does not exist'

    # 2. Ejecutamos el método de corrección (que aún no existe)
    sql_arreglado = generador.corregir_sql(sql_malo, error_postgres, contexto_detallado)

    # 3. Afirmaciones
    assert sql_arreglado == "SELECT id_org FROM organizaciones;"
    
    # Validamos que la cadena haya sido llamada con los parámetros correctos
    argumentos_llamada = mock_correction_chain.invoke.call_args[0][0]
    assert argumentos_llamada["sql_erroneo"] == sql_malo
    assert argumentos_llamada["error_db"] == error_postgres
    assert argumentos_llamada["contexto_tablas"] == contexto_detallado


def test_corregir_sql_limpia_etiquetas_markdown(mocker, contexto_detallado):
    """Verifica que el corrector también limpie los backticks del SQL."""
    
    mock_correction_chain = MagicMock()
    mock_correction_chain.invoke.return_value = "```sql\nSELECT * FROM organizaciones;\n```"
    mocker.patch('models.llm_generator.LLMGenerator._crear_cadena_correccion', return_value=mock_correction_chain)

    generador = LLMGenerator()
    sql_arreglado = generador.corregir_sql("SELECT * FROM orgs;", "relation orgs does not exist", contexto_detallado)

    # Afirmamos que el SQL corregido sale limpio para ir directo a la BD
    assert "```sql" not in sql_arreglado
    assert sql_arreglado.strip() == "SELECT * FROM organizaciones;"