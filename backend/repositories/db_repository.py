from sqlalchemy import text
from sqlalchemy.orm import Session
from fastapi import Depends
from backend.database import get_db

class DBRepository:
    def __init__(self, db: Session = Depends(get_db)):
        self.db = db

    def ejecutar_consulta(self, sql_limpio: str):
        """
        Ejecuta una consulta SQL cruda de forma segura y devuelve 
        una lista de diccionarios con los registros correspondientes.
        """
        try:
            # Ejecutamos usando text() para proteger la consulta
            result = self.db.execute(text(sql_limpio))
            
            # Verificamos si la consulta retorna filas (ej: un SELECT)
            if result.returns_rows:
                # _mapping transforma cada tupla en un diccionario {columna: valor}
                return [dict(row._mapping) for row in result]
            
            return []
            
        except Exception as e:
            # Capturamos cualquier error de sintaxis de Postgres y lanzamos ValueError para el test
            raise ValueError(f"Error ejecutando SQL en PostgreSQL: {str(e)}")