import os
from dotenv import load_dotenv
from langchain_core.prompts import PromptTemplate
from langchain_groq import ChatGroq
from backend.custom.custom_methods import custom_sql_query_chain
from backend.database import get_db
load_dotenv()



model = ChatGroq(
    model="llama-3.3-70b-versatile", # Un modelo pesado y muy inteligente para SQL
    temperature=0,           # Fundamental mantenerlo en 0 para código
    api_key=os.getenv("GROQ_API_KEY")
)

template = """Dada la siguiente pregunta del usuario, crea una consulta PostgreSQL sintácticamente correcta para responderla.
    
Reglas estrictas:
1. Devuelve ÚNICAMENTE el código SQL. 
2. NO incluyas formato markdown (ni ```sql ni ```).
3. NO incluyas la palabra "SQLQuery:" ni ninguna otra explicación.
4. NO limites el número de resultados a devolver a menos que el usuario lo pida explícitamente. Si el usuario pide un número específico de resultados, entonces usa LIMIT para limitar los resultados a ese número.
5. Si el usuario te pide todos los datos que cumplan con la consulta, entonces no uses LIMIT.
6. Usa solo las siguientes tablas:
{table_info}
    
Pregunta: {input}
"""

prompt = PromptTemplate.from_template(template)

def get_query_chain():
    """
    Crea la cadena de LangChain. Al estar encapsulada, get_db() 
    NO se ejecuta hasta que llamemos explícitamente a get_query_chain().
    """
    return custom_sql_query_chain(
        llm=model, 
        db=get_db(), 
        get_col_comments=True
    )