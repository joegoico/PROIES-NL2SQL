from typing import Any
from backend.prompts import prompt_SQL
from langchain_community.utilities import SQLDatabase
from langchain_core.language_models import BaseLanguageModel
from langchain_core.output_parsers import StrOutputParser
from langchain_core.runnables import Runnable, RunnablePassthrough
from langchain_classic.chains.sql_database.query import SQLInput, SQLInputWithTables, _strip
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
        # Ejecutamos la consulta
        result = connection.execute(text(sql_query))
        
        # Convertimos cada fila en un diccionario usando _mapping
        # Esto nos da los nombres reales de las columnas de tu Postgres
        rows = [dict(row._mapping) for row in result]
    
    # El jsonable_encoder limpia los Decimals y los convierte en Floats/Ints
    return jsonable_encoder(rows)
def custom_sql_query_chain(
    llm: BaseLanguageModel,
    db: SQLDatabase,
    get_col_comments: bool | None = None,
) -> Runnable[SQLInput | SQLInputWithTables | dict[str, Any], str]:
    r"""Create a chain that generates SQL queries.

    *Security Note*: This chain generates SQL queries for the given database.

        The SQLDatabase class provides a get_table_info method that can be used
        to get column information as well as sample data from the table.

        To mitigate risk of leaking sensitive data, limit permissions
        to read and scope to the tables that are needed.

        Optionally, use the SQLInputWithTables input type to specify which tables
        are allowed to be accessed.

        Control access to who can submit requests to this chain.

        See https://docs.langchain.com/oss/python/security-policy for more information.

    Args:
        llm: The language model to use.
        db: The SQLDatabase to generate the query for.
    """
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
        RunnablePassthrough.assign(**inputs)  # type: ignore[return-value]
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
        | _strip
    )

def get_catalog_and_comments(db: SQLDatabase) -> str:
    """Función para obtener el catálogo de tablas y sus comentarios DE TABALA desde la base de datos."""

    global _catalog_cached
    if _catalog_cached is not None:
        return _catalog_cached
    
    # Usamos SQLAlchemy para inspeccionar la base de datos y obtener los nombres de las tablas
    inspector = inspect(db._engine)
    catalog_info =""
    table_names = inspector.get_table_names()

    # Recorremos cada tabla y obtenemos su comentario, si existe
    #Guardamos el resultado en una variable global para evitar hacer esta consulta cada vez que se haga una pregunta
    for table_name in table_names:
        table_comment = inspector.get_table_comment(table_name)
        comentario = table_comment.get("text", "")
        desc=comentario if comentario else "Sin descripción"
        catalog_info += f"-{table_name}: {desc}\n"
    
    # Guardamos el catálogo en la variable global para futuras consultas
    _catalog_cached = catalog_info
    return _catalog_cached

    _