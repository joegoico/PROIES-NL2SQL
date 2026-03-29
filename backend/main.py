from backend.database import db
from backend.engine import query_chain
from fastapi import FastAPI
from backend.custom.custom_classes import Query, table_chain
from backend.custom.custom_methods import get_catalog_and_comments

app = FastAPI(title="agente PROIES")

# Acordate de importar tu función arriba de todo en main.py
# from custom.custom_methods import get_catalog_and_comments

@app.post("/ask")
async def ask_database(query: Query):
    pregunta = query.question
    
    # 1. Traemos las 92 tablas (La 1ra vez va a la DB, las demás lee de RAM)
    catalogo_texto = get_catalog_and_comments(db)
    
    # 2. Invocamos al recepcionista pasándole AMBAS cosas (la pregunta y el catálogo)
    table_result = table_chain.invoke({
        "pregunta": pregunta,
        "catalogo_tablas": catalogo_texto  # <--- ACÁ CONECTAMOS EL CABLE
    })
    
    print(f"Tablas elegidas por el Router: {table_result.table_name}")

    # 3. Generamos el SQL (pasando solo las tablas elegidas)
    sql_generado = query_chain.invoke({
        "question": pregunta, 
        "table_names_to_use": table_result.table_name
    })

    # 4. Limpiamos por las dudas
    sql_limpio = sql_generado.strip().replace("```sql", "").replace("```", "")
    print(f"SQL Generado: {sql_limpio}")

    # 5. Ejecutamos contra PostgreSQL
    try:
        resultado_datos = db.run(sql_limpio)
        print(f"Datos obtenidos: {resultado_datos}")
        # Acá podrías retornar los datos al frontend si quisieras
    except Exception as e:
        print(f"Error al ejecutar en la DB: {e}")