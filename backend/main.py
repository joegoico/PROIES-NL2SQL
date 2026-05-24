import json
from backend.custom.master_schema import init_schema
from backend.database import JSON_OUTPUT
from fastapi import FastAPI
from backend.controllers import (nl2sql_controller)

async def lifespan(app: FastAPI):
    # 1. Generar el esquema maestro al iniciar la aplicación
    init_schema()
    
    # 2. Cargar el esquema maestro en el STATE de la aplicación
    with open(JSON_OUTPUT, 'r', encoding='utf-8') as f:
        app.state.esquema_maestro = json.load(f)
    
    print("Esquema maestro cargado en el state de la app. Listo para recibir consultas.")
    yield 

# CORRECCIÓN: Le pasamos el lifespan a FastAPI acá
app = FastAPI(title="agente PROIES", lifespan=lifespan)

app.include_router(nl2sql_controller.router)