from langchain_core.prompts import PromptTemplate

# El prompt del recepcionista
prompt_recepcionista = PromptTemplate.from_template("""
Sos un experto en bases de datos. Dada la pregunta del usuario, devolvé SOLO la lista de tablas que hacen falta.
Presta atención a los comentarios de las tablas y columnas para entender mejor el catálogo.
CATÁLOGO DE TABLAS DISPONIBLES Y SUS DESCRIPCIONES:
{catalogo_tablas}                                            
INSTRUCCIÓN DE FORMATO:
Debes responder ÚNICAMENTE con un objeto JSON que siga esta estructura:
{{
    "table_name": ["nombre_tabla1", "nombre_tabla2"]
}}

Pregunta del usuario: {pregunta}
""")

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

prompt_SQL = PromptTemplate.from_template(template)