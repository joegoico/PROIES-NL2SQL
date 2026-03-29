from backend.prompts import prompt_recepcionista
from pydantic import BaseModel, Field
from backend.engine import model as llm

class TableSelector(BaseModel):
    table_name: list[str] = Field(..., description="The name of the table to query")

# Instanciamos a Groq pero le ponemos el "bozal" que creamos arriba
llm_estricto = llm.with_structured_output(TableSelector, method="json_mode")

# Unimos el prompt estricto con el LLM
table_chain = prompt_recepcionista | llm_estricto

class Query(BaseModel):
    question:str
