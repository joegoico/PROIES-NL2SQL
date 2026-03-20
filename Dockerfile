# Usamos una imagen ligera de Python 3.12
FROM python:3.12-slim

# Evita que Python genere archivos .pyc y permite ver logs en tiempo real
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

# Instalamos dependencias del sistema necesarias para psycopg2
RUN apt-get update && apt-get install -y libpq-dev gcc && rm -rf /var/lib/apt/lists/*

# Copiamos e instalamos las librerías
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto del código (main, engine, database)
COPY . .

# Exponemos el puerto de FastAPI
EXPOSE 8000

# Comando para arrancar la API
CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "8000"]