import streamlit as st
import requests
import pandas as pd
import ast

# 1. Configuración de la página (¡Primero que nada!)
st.set_page_config(
    page_title="Simboro SQL Assistant",
    page_icon="📚",
    layout="wide"
)

# 2. Estilo CSS para que se vea más profesional (Opcional)
st.markdown("""
    <style>
    .big-font { font-size:20px !important; }
    .stCode { background-color: #f0f2f6; border-radius: 5px; }
    </style>
""", unsafe_allow_html=True)

# 3. Título y encabezado
st.title("📚 PROIES NL2SQL assistant")
st.markdown("---")
st.write("Escribí tu pregunta y el agente ")

# 4. El input del usuario
pregunta_usuario = st.chat_input("Ej: ¿Qué libros nuevos tenemos en stock?")

# 5. La lógica de la llamada a la API
# ¡IMPORTANTE!: Usamos el nombre del servicio de Docker, ej: 'api'
API_URL = "http://api:8000/api/ask" 

if pregunta_usuario:
    st.write(f"#### Resultados para: \"{pregunta_usuario}\"")
    
    with st.spinner("🤖 El asistente de IA está pensando... (La 1ra vez puede tardar un poquito por la carga del catálogo)"):
        try:
            # Llamamos a tu endpoint en FastAPI
            response = requests.post(API_URL, json={"pregunta": pregunta_usuario}, timeout=60)
            
            if response.status_code == 200:
                data = response.json()
                # --- DEBUG: Verificamos qué llega del Backend ---
                with st.expander("🔍 Debug: Ver respuesta cruda del Backend"):
                    st.json(data) 
# -----------------------------------------------
                # --- DISEÑO EN COLUMNAS PARA DEBUEGUER ---
                col1, col2 = st.columns([1, 2])
                
                with col1:
                    st.write("#### 🛠️ Proceso de la IA")
                    
                    # 5a. Mostrar Tablas Elegidas (Misión de Ingeniería)
                    st.write("**1. Tablas seleccionadas por el Router:**")
                    tables = data.get("tables", [])
                    if tables:
                        st.info(f"{tables}")
                    else:
                        st.warning("No se seleccionaron tablas.")
                        
                    # 5b. Mostrar SQL Generado
                    st.write("**2. SQL generado:**")
                    sql_query = data.get("sql", "").strip()
                    if sql_query:
                        st.code(sql_query, language="sql")
                    else:
                        st.warning("No se generó SQL.")
                
                with col2:
                    st.write("#### 📊 Datos Obtenidos")
                    
                    # 1. Obtenemos los resultados directamente
                    results = data.get("results", [])

                    # 2. Validación de seguridad: Si por algún motivo es None, lo volvemos lista vacía
                    if results is None:
                        results = []

                    # 3. Lógica de visualización
                    if len(results) > 0:
                        st.success(f"Se encontraron {len(results)} registros.")
                        
                        # Convertimos a DataFrame
                        # Si results es una lista de tuplas, Pandas lo entiende perfecto
                        df = pd.DataFrame(results)
                        
                        # TIP: Si querés ponerle nombres a las columnas dinámicamente:
                        # df.columns = [f"Columna {i+1}" for i in range(df.shape[1])]
                        
                        st.dataframe(df, use_container_width=True)
                    else:
                        st.warning("No se encontraron resultados en la base de datos.")
                        # Debug por si acaso:
                        st.write("Respuesta cruda de la API:", data)
                        
            else:
                st.error(f"Error en la API. Código: {response.status_code}")
                st.write(response.text)
                
        except requests.exceptions.RequestException as e:
            st.error(f"Error de conexión con el backend: {e}")
            st.warning("Asegurate de que el contenedor 'api' esté corriendo y sea accesible.")