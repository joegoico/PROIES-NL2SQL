import os
from dotenv import load_dotenv
from langchain_community.utilities import SQLDatabase

load_dotenv()

# Usamos variables de entorno con valores por defecto
# En Docker, DB_HOST será 'db' y DB_PORT será '5432'
DB_HOST = os.getenv("DB_HOST", "db") 
DB_PORT = os.getenv("DB_PORT", "5432") 
DB_USER = os.getenv("DB_USER", "postgres")
DB_PASS = os.getenv("DATABASE_PASSWORD")
DB_NAME = os.getenv("DB_NAME", "practica_investigacion")
# 1. Definimos la base del proyecto relativa a este archivo
# Esto hace que funcione en cualquier SO (Linux/Windows)
BASE_DIR = os.path.dirname(os.path.abspath(__file__))

# 2. Obtenemos las rutas desde variables de entorno (con valores por defecto)
# Esto es vital para Docker y aplicaciones web
SQL_INPUT = os.getenv("SQL_COMMENTS_PATH", os.path.join(BASE_DIR, "sql", "03_comments.sql"))
JSON_OUTPUT = os.getenv("SCHEMA_MAP_PATH", os.path.join(BASE_DIR, "data", "master_schema.json"))

# La URI ahora apuntará al servicio correcto según el entorno
uri = f"postgresql+psycopg2://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

db = SQLDatabase.from_uri(uri)