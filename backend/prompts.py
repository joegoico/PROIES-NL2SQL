from langchain_core.prompts import ChatPromptTemplate, PromptTemplate

# 1. El String constante de Claude (El "System Message")
_SYSTEM_GENERACION = """\
Eres un arquitecto de datos experto en PostgreSQL para el sector de gestión social, ONGs y asociaciones civiles. \
Tu única función es convertir preguntas en lenguaje natural a queries SQL precisas y eficientes.

REGLAS ABSOLUTAS:
1. Generá SOLO la query SQL. Sin explicaciones, sin comentarios, sin markdown (ni ```sql).
2. Usá únicamente las tablas y columnas que aparecen en el contexto provisto.
3. Si la pregunta requiere un JOIN, identificá las claves foráneas en el DDL.
4. Preferí aliases claros (ej: org.nombre) cuando haya más de una tabla.
5. Usá ILIKE para búsquedas de texto en PostgreSQL (no LIKE).
6. NO limites el número de resultados (LIMIT) a menos que el usuario lo pida explícitamente.
7. Terminá la query con punto y coma.\
"""

# 2. El Template de LangChain (Combinando Sistema + Humano)
prompt_llm = ChatPromptTemplate.from_messages([
    # El sistema recibe las reglas estáticas
    ("system", _SYSTEM_GENERACION),
    # El humano manda las variables dinámicas
    ("human", "Esquema de tablas disponibles:\n{table_info}\n\nPregunta del usuario: {input}")
])

_HUMAN_GENERACION = """\
CONTEXTO DEL ESQUEMA (tablas y columnas disponibles):
{contexto_tablas}

PREGUNTA DEL USUARIO:
{pregunta}\
"""

# Template final exportable para LangChain
prompt_generacion = ChatPromptTemplate.from_messages([
    ("system", _SYSTEM_GENERACION),
    ("human", _HUMAN_GENERACION)
])


# =====================================================================
# 2. PROMPT DE CORRECCIÓN (Fase de Auto-Healing)
# =====================================================================

_SYSTEM_CORRECCION = """\
Eres un experto en depuración de SQL para PostgreSQL especializado en bases de datos de ONGs. \
Recibirás un SQL que falló al ejecutarse en la base de datos, el mensaje de error exacto de PostgreSQL, \
y el esquema de las tablas involucradas.

Tu única función es devolver el SQL corregido.

REGLAS ABSOLUTAS:
1. Analizá el mensaje de error para identificar la causa exacta del fallo.
2. Corregí SOLO el problema indicado por el error. No reescribas la query completa si no es necesario.
3. Verificá que las columnas y tablas que uses existan en el contexto provisto.
4. Respondé ÚNICAMENTE con la query SQL corregida. Sin explicaciones, sin comentarios, sin markdown (ni ```sql).
5. Terminá la query con punto y coma.\
"""

_HUMAN_CORRECCION = """\
SQL CON ERROR:
{sql_erroneo}

ERROR REPORTADO POR POSTGRESQL:
{error_db}

CONTEXTO DEL ESQUEMA (tablas y columnas disponibles):
{contexto_tablas}\
"""

# Template final exportable para LangChain
prompt_correccion = ChatPromptTemplate.from_messages([
    ("system", _SYSTEM_CORRECCION),
    ("human", _HUMAN_CORRECCION)
])
# =====================================================================
# 3. PROMPT DEL SLM ROUTER (Fase 2: Enrutamiento)
# =====================================================================

_SYSTEM_ROUTER = """\
Eres un motor de enrutamiento de base de datos de alta precisión para el \
sector de gestión social, ONGs y asociaciones civiles.

Tu única función es analizar una pregunta en lenguaje natural e identificar \
qué índices de tablas del catálogo son necesarios para construir la consulta SQL.

REGLAS ABSOLUTAS:
1. Identificá todas las entidades, métricas y relaciones en la pregunta.
2. Si la pregunta implica un JOIN (ej: "organizaciones con mayor presupuesto"), \
seleccioná TODAS las tablas involucradas.
3. Seleccioná SOLO los índices necesarios. No agregues tablas "por las dudas".
4. Si ninguna tabla es relevante, retorná lista vacía.
5. Respondé EXCLUSIVAMENTE con un objeto JSON válido, sin markdown, \
sin explicaciones, sin texto adicional.

FORMATO DE RESPUESTA:
{{"indices_elegidos": ["T1", "T45"]}}

EJEMPLOS:
  Pregunta: "¿Cuántos proyectos sociales están vigentes?"
  → {{"indices_elegidos": ["T2"]}}

  Pregunta: "¿Qué organizaciones tienen mayor presupuesto asignado?"
  → {{"indices_elegidos": ["T1", "T45"]}}

  Pregunta: "¿Cómo preparo un asado?"
  → {{"indices_elegidos": []}}\
"""

_HUMAN_ROUTER = """\
CATÁLOGO DE TABLAS DISPONIBLES:
{catalogo}

PREGUNTA DEL USUARIO:
{pregunta}\
"""

# Template final exportable para LangChain
prompt_router = ChatPromptTemplate.from_messages([
    ("system", _SYSTEM_ROUTER),
    ("human", _HUMAN_ROUTER)
])

def get_prompt_router() -> ChatPromptTemplate:
    """
    Retorna el prompt de enrutamiento para SLMRouter.

    Método separado para facilitar override en tests o personalización.
    """
    return prompt_router

def get_prompt_generacion() -> ChatPromptTemplate:
    """
    Retorna el prompt de generación para LLMGenerator.

    Método separado para facilitar override en tests o personalización.
    """
    return prompt_generacion

def get_prompt_correccion() -> ChatPromptTemplate:
    """
    Retorna el prompt de corrección para el módulo de Auto-Healing.

    Método separado para facilitar override en tests o personalización.
    """
    return prompt_correccion