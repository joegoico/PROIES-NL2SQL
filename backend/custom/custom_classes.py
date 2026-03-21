from langchain_core.prompts import PromptTemplate
from pydantic import BaseModel, Field
from engine import model as llm

class TableSelector(BaseModel):
    table_name: list[str] = Field(..., description="The name of the table to query")

# Instanciamos a Groq pero le ponemos el "bozal" que creamos arriba
llm_estricto = llm.with_structured_output(TableSelector)

# El prompt del recepcionista
prompt_recepcionista = PromptTemplate.from_template("""
Sos un experto en bases de datos. Dada la pregunta del usuario, devolvé SOLO la lista de tablas que hacen falta.
Tus únicas opciones son: autor, cliente, condicion, editorial, libro, titulo, venta, volumen.

Pregunta del usuario: {pregunta}
""")

# Unimos el prompt estricto con el LLM
table_chain = prompt_recepcionista | llm_estricto

class Query(BaseModel):
    question:str
