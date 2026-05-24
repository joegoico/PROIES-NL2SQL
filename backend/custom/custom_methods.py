from typing import Any
from backend.prompts import prompt_SQL
from langchain_community.utilities import SQLDatabase
from langchain_core.language_models import BaseLanguageModel
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import Runnable, RunnablePassthrough
# IMPORT TÓXICO ELIMINADO: from langchain_classic...

from sqlalchemy import inspect
from sqlalchemy import text
from fastapi.encoders import jsonable_encoder
    
_catalog_cached = None

def ejecutar_sql_estructurado(db, sql_query: str):
    """
    Ejecuta el SQL y devuelve una lista de diccionarios real.
    Ej: [{'isbn': '978...', 'precio': 543.00}]
    """
    with db._engine.connect() as connection:
        result = connection.execute(text(sql_query))
        rows = [dict(row._mapping) for row in result]
    
    return jsonable_encoder(rows)


# 1. CREAMOS NUESTRO PROPIO STRIPPER (Reemplaza a _strip de langchain_classic)
def clean_sql(sql_text: str) -> str:
    """Elimina las etiquetas markdown que el LLM suele agregar."""
    return sql_text.strip().removeprefix("```sql\n").removeprefix("```sql").removeprefix("```").removesuffix("```").strip()


def custom_sql_query_chain(
    llm: BaseLanguageModel,
    db: SQLDatabase,
    get_col_comments: bool | None = None,
) -> Runnable[dict[str, Any], str]: # 2. Simplificamos el tipado para no depender de librerías viejas
    
    table_info_kwargs = {}
    if get_col_comments:
        if db.dialect not in ("postgresql", "mysql", "oracle"):
            msg = (
                f"get_col_comments=True is only supported for dialects "
                f"'postgresql', 'mysql', and 'oracle'. Received dialect: "
                f"{db.dialect}"
            )
            raise ValueError(msg)
        table_info_kwargs["get_col_comments"] = True

    inputs = {
        "input": lambda x: x["question"],
        "table_info": lambda x: db.get_table_info(
            table_names=x.get("table_names_to_use"),
            **table_info_kwargs,
        ),
    }
    
    return (
        RunnablePassthrough.assign(**inputs)  
        | (
            lambda x: {
                k: v
                for k, v in x.items()
                if k not in ("question", "table_names_to_use")
            }
        )
        | prompt_SQL
        | llm.bind(stop=["\nSQLResult:"])
        | StrOutputParser()
        | clean_sql  # 3. Usamos nuestra función limpia
    )

def get_catalog_and_comments(db: SQLDatabase) -> str:
    """Función para obtener el catálogo de tablas y sus comentarios DE TABLA desde la base de datos."""
    global _catalog_cached
    if _catalog_cached is not None:
        return _catalog_cached
    
    inspector = inspect(db._engine)
    catalog_info =""
    table_names = inspector.get_table_names()

    for table_name in table_names:
        table_comment = inspector.get_table_comment(table_name)
        comentario = table_comment.get("text", "")
        desc=comentario if comentario else "Sin descripción"
        catalog_info += f"-{table_name}: {desc}\n"
    
    _catalog_cached = catalog_info
    return _catalog_cached