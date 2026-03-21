from __future__ import annotations
from typing import Any
from langchain_community.utilities import SQLDatabase
from langchain_core.language_models import BaseLanguageModel
from langchain_core.output_parsers import StrOutputParser
from langchain_core.prompts import PromptTemplate
from langchain_core.runnables import Runnable, RunnablePassthrough
from langchain_classic.chains.sql_database.query import SQLInput, SQLInputWithTables, _strip
    
template = """Dada la siguiente pregunta del usuario, crea una consulta PostgreSQL sintácticamente correcta para responderla.
    
Reglas estrictas:
1. Devuelve ÚNICAMENTE el código SQL. 
2. NO incluyas formato markdown (ni ```sql ni ```).
3. NO incluyas la palabra "SQLQuery:" ni ninguna otra explicación.
4. NO limites el número de resultados a devolver a menos que el usuario lo pida explícitamente. Si el usuario pide un número específico de resultados, entonces usa LIMIT para limitar los resultados a ese número.
5. Si el usuario te pide todos los datos que cumplan con la consulta, entonces no uses LIMIT.
6. Usa solo las siguientes tablas:
{table_info}
    
Pregunta: {input}
"""

prompt = PromptTemplate.from_template(template)

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
        | prompt
        | llm.bind(stop=["\nSQLResult:"])
        | StrOutputParser()
        | _strip
    )