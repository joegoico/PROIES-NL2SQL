from fastapi import HTTPException, APIRouter, Depends
from backend.custom.custom_classes import Query
from backend.service.nl2sql_service import NL2SQLService


router = APIRouter()

@router.post("/ask")
async def ask_database(query: Query, service: NL2SQLService = Depends()):
    try:
        # El controller solo delega la tarea
        resultado = service.procesar_pregunta(query.question)
        return {"status": "success", "data": resultado}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))