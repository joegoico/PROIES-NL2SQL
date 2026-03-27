from backend.database import db
from backend.engine import query_chain
from fastapi import FastAPI
from backend.custom.custom_classes import Query, table_chain

app = FastAPI(title="agente PROIES")

@app.post("/ask")
async def ask_database( query: Query):
    pregunta = query.question
    table_result = table_chain.invoke({"pregunta": pregunta})
    # 2. Generamos el SQL
    sql_generado = query_chain.invoke({"question": pregunta, "table_names_to_use": table_result.table_name})

    # 3. Limpiamos por las dudas (A veces el LLM ignora las reglas y mete espacios o saltos de línea)
    sql_limpio = sql_generado.strip().replace("```sql", "").replace("```", "")

    print(f"SQL Generado: {sql_limpio}")

    # 4. Ejecutamos contra PostgreSQL
    try:
        resultado_datos = db.run(sql_limpio)
        print(f"Datos obtenidos: {resultado_datos}")
    except Exception as e:
        print(f"Error al ejecutar en la DB: {e}")