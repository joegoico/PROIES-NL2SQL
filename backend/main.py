import json
from backend.custom.master_schema import init_schema
from backend.database import JSON_OUTPUT
from fastapi import FastAPI
from backend.controllers import (nl2sql_controller)


app = FastAPI(title="agente PROIES")

app.include_router(nl2sql_controller.router)

esquema_maestro = {}

async def lifespan(app: FastAPI):
    # 1. Generar el esquema maestro al iniciar la aplicación
    init_schema()
    
    # 2. Cargar el esquema maestro en memoria para uso rápido
    global esquema_maestro
    with open(JSON_OUTPUT, 'r', encoding='utf-8') as f:
        esquema_maestro = json.load(f)
    
    print("Esquema maestro cargado en memoria. La aplicación está lista para recibir consultas.")
    
    yield  # Aquí es donde la aplicación estará corriendo


