import os
from dotenv import load_dotenv
from langchain_community.utilities import SQLDatabase

load_dotenv()

# 1. Definimos las rutas del proyecto relativas a este archivo
# Estas variables globales son seguras porque no ejecutan ninguna conexión, solo arman strings.
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
SQL_INPUT = os.getenv("SQL_COMMENTS_PATH", os.path.join(BASE_DIR, "sql", "03_comments.sql"))
JSON_OUTPUT = os.getenv("SCHEMA_MAP_PATH", os.path.join(BASE_DIR, "data", "master_schema.json"))

# 2. Encapsulamos la conexión en funciones (Factory Pattern)
def get_db_uri() -> str:
    """
    Construye la URI de la base de datos leyendo las variables de entorno en tiempo real.
    """
    DB_HOST = os.getenv("DB_HOST", "db") 
    DB_PORT = os.getenv("DB_PORT", "5432") 
    DB_USER = os.getenv("DB_USER", "postgres")
    DB_PASS = os.getenv("DATABASE_PASSWORD")
    DB_NAME = os.getenv("DB_NAME", "practica_investigacion")
    
    if not DB_PASS:
        raise ValueError("CRÍTICO: La variable de entorno DATABASE_PASSWORD no está definida.")

    return f"postgresql+psycopg2://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

def get_db() -> SQLDatabase:
    """
    Crea y devuelve la instancia de conexión a la base de datos (LangChain SQLDatabase).
    Al estar dentro de una función, NO se ejecuta automáticamente al importar el archivo.
    """
    uri = get_db_uri()
    return SQLDatabase.from_uri(uri)