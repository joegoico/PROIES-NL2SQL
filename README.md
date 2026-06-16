# PROIES-NL2SQL
# Motor Híbrido NL2SQL para Gestión Social y ONGs 🚀

Este proyecto implementa un motor avanzado de **Natural Language to SQL (NL2SQL)** diseñado para traducir preguntas en lenguaje natural a consultas relacionales precisas sobre bases de datos complejas y altamente normalizadas (esquemas de +90 tablas). 

Desarrollado como parte de la **Práctica Profesional Supervisada (PPS)** para la carrera de Ingeniería en Sistemas de la Universidad Nacional del Centro (UNICEN).

---

## 🧠 Arquitectura del Pipeline (Procesamiento en Dos Capas)

Para procesar consultas de manera eficiente en una base de datos con 92 tablas, se diseñó un pipeline híbrido que desacopla el filtrado semántico de la generación de código SQL. Esto optimiza drásticamente el uso de tokens, reduce la latencia y elimina alucinaciones por exceso de contexto.

1. **Fase de Pre-filtrado Léxico (`SchemaPrefilter`):** Mediante el patrón estrategia (`ScoreCalculator`), el sistema realiza un análisis léxico-semántico veloz de la pregunta del usuario contra los metadatos y comentarios del esquema, reduciendo el universo de 92 tablas a un `top_k` óptimo de tablas candidatas.
2. **Fase de Ruteo SLM (`SLMRouter`):** Un modelo de lenguaje pequeño (**Llama 3.1 8B via Groq**) procesa las tablas candidatas bajo una estrategia de *Few-Shot Prompting*, mapeando el catálogo estructurado a índices hash redundantes para retornar un objeto JSON estricto con los índices exactos requeridos para la consulta.
3. **Fase de Generación y Auto-Healing LLM:** El modelo de razonamiento pesado (**Llama 3.3 70B**) toma los DDLs dinámicos extraídos de la fase anterior y construye la query PostgreSQL nativa. Cuenta con un bucle cerrado de autocorrecion (*Auto-healing*): si el motor relacional rechaza la sintaxis, el LLM procesa el error y se auto-depura antes de responder al cliente.

---

## 🛠️ Stack Tecnológico

* **Backend Framework:** FastAPI (Python 3.12)
* **IA & Orquestación:** LangChain (LCEL - LangChain Expression Language)
* **Modelos LLM/SLM:** Llama 3.1 8B (Router) & Llama 3.3 70B (Generator) vía Groq API
* **Base de Datos:** PostgreSQL
* **Frontend / UI Demo:** Streamlit (Visualización interactiva del pipeline)
* **ORM/Conexión:** SQLAlchemy (`text()` execution seguro contra SQL Injection)
* **Metodología de Desarrollo:** Test-Driven Development (TDD) con Pytest
* **Infraestructura:** Docker & Docker Compose

---

## 💎 Buenas Prácticas de Ingeniería Aplicadas

* **Inyección de Dependencias (Factory Pattern):** Inicialización limpia y desacoplada de routers, servicios y repositorios a través de las dependencias nativas de FastAPI.
* **Gestión de Estado Eficiente (`app.state`):** El mapeo inicial del diccionario estructurado y las instancias pesadas de LangChain se asocian al ciclo de vida global del servidor web, eliminando cuellos de botella en cada request HTTP.
* **Principio de Responsabilidad Única (SOLID):** Refactorización completa y aislamiento absoluto de las plantillas de prompts del sistema en un módulo independiente (`prompts.py`), facilitando el mantenimiento y la escalabilidad del dominio.
* **Robustez ante Fallos (Defensive Programming):** El extractor de esquemas omite fallos e índices imperfectos generados por la IA de forma segura, evitando la caída del pipeline de ejecución.

---

## 🧪 Suite de Pruebas (TDD)

El core del negocio se desarrolló aplicando **TDD**. La suite garantiza el correcto funcionamiento de los algoritmos de enrutamiento y normalización de texto de manera local, utilizando mocks estructurados de esquemas relacionales para evitar el consumo innecesario de tokens de API externos durante la fase de testing.

Para correr las pruebas unitarias e integrales:

```bash
# Activar entorno virtual
source .venv/bin/activate

# Ejecutar Pytest en modo detallado
pytest -v
```

## 🚀 Instalación y Despliegue Local

### Requisitos previos
* Docker y Docker Compose instalados.
* Una API Key de [Groq Cloud](https://console.groq.com/).

### Pasos para inicializar el entorno

1. **Clonar el repositorio:**
   ```bash
   git clone [https://github.com/tu-usuario/tu-repo-nl2sql.git](https://github.com/tu-usuario/PROIES-NL2SQL.git)
   cd PROIES-NL2SQL
   ```
1. **Configurar Variables de Entorno:**
Crea un archivo `.env` en la raíz del proyecto con la siguiente estructura:

```env
GROQ_API_KEY=tu_api_key_aqui
DATABASE_URL=postgresql://user:password@db:5432/nombre_db
```
3. **Levantar contenedores con Docker Compose:**
Ejecutá el siguiente comando en tu terminal:
```bash
docker-compose up --build
```
El entorno se inicializará automáticamente levantando tres servicios interconectados:

* **FastAPI Backend:** Expone la documentación interactiva y los endpoints en http://localhost:8000/docs.

* **Streamlit UI:** Panel web para probar el motor de forma visual y amigable en http://localhost:8501.

* **PostgreSQL:** Base de datos relacional con el esquema precargado.

  ---

## 🛠️ Estado del Proyecto: En Desarrollo Activo 🚧

Este motor NL2SQL se encuentra actualmente en **fase de desarrollo activo y optimización**. Las principales líneas de trabajo en curso incluyen:
* **Refinamiento de Prompts:** Ajuste fino de las instrucciones Few-Shot del SLM para minimizar alucinaciones en uniones complejas (JOINs) de la base de datos.
* **Ampliación de Cobertura de Tests:** Incremento de la suite de pruebas unitarias bajo metodología TDD para cubrir casos extremos y queries con funciones de agregación complejas.
* **Optimización de la Interfaz:** Mejoras continuas en el panel de Streamlit para ofrecer una visualización aún más detallada del flujo de ejecución interna por cada capa.

---

## 📝 Licencia
Este proyecto forma parte de un trabajo académico para la Universidad Nacional del Centro (UNICEN). Todos los derechos reservados.
