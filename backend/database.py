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

# La URI ahora apuntará al servicio correcto según el entorno
uri = f"postgresql+psycopg2://{DB_USER}:{DB_PASS}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

db = SQLDatabase.from_uri(uri)