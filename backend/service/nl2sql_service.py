from repositories.db_repository import DBRepository
from fastapi import Depends

class NL2SQLService:
    def __init__(self, repo: DBRepository = Depends()):
        self.repo = repo
        # Acá podrías inyectar el esquema_en_memoria o las cadenas de LangChain

    def procesar_pregunta(self, pregunta: str, esquema: dict):
        # 1. SLM: Obtener índices (T1, T45...)
        # indices = self.slm_router.invoke(...)
        
        # 2. Armar contexto detallado buscando en memoria
        # contexto = self._armar_contexto(indices)
        
        # 3. LLM: Generar SQL
        # sql_generado = self.llm_generator.invoke(...)
        # sql_limpio = self._limpiar_sql(sql_generado)
        
        # 4. Ir a la base de datos a través del Repository
        resultados_db = self.repo.ejecutar_consulta(sql_limpio)
        
        return {
            "sql_generado": sql_limpio,
            "resultados": resultados_db
        }