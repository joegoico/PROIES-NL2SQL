from fastapi import HTTPException, APIRouter, Depends
from backend.custom.custom_classes import Query
from backend.service.nl2sql_service import NL2SQLService
from fastapi import Request


router = APIRouter()

@router.post("/ask")
async def ask_database(query: Query,request:Request, service: NL2SQLService = Depends()):
    try:
        # Recuperamos el diccionario desde el state de la app
        esquema = request.app.state.esquema_maestro
        
        # Se lo pasamos al servicio como argumento
        resultado = service.procesar_pregunta(query.question, esquema)
        return {"status": "success", "data": resultado}
    except ValueError as e:
        raise HTTPException(status_code=400, detail=str(e))
    except Exception as e:
        raise HTTPException(status_code=500, detail="Error interno del servidor")