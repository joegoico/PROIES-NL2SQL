import re
import json
import os
from backend.database import SQL_INPUT, JSON_OUTPUT

def parse_to_indexed_schema(sql_file):
    if not os.path.exists(sql_file):
        raise FileNotFoundError(f"No se encontró el archivo SQL en: {sql_file}")
    
    schema_master = {}
    # Diccionario auxiliar para mantener el orden y asignar IDs
    table_to_id = {}
    table_counter = 1
    
    with open(sql_file, 'r', encoding='utf-8') as f:
        content = f.read()

        # 1. Encontrar todos los comentarios de tablas primero para asignar IDs
        table_matches = re.findall(r"COMMENT ON TABLE (\w+) IS '(.+?)';", content, re.I)
        
        for table_name, table_comment in table_matches:
            t_id = f"T{table_counter}"
            table_to_id[table_name] = t_id
            
            schema_master[t_id] = {
                "nombre_real": table_name,
                "descripcion_tabla": table_comment,
                "columnas": {}
            }
            table_counter += 1

        # 2. Encontrar todos los comentarios de columnas y asignarlos a su T_id
        col_matches = re.findall(r"COMMENT ON COLUMN (\w+)\.(\w+) IS '(.+?)';", content, re.I)
        
        for t_name, col_name, col_comment in col_matches:
            if t_name in table_to_id:
                t_id = table_to_id[t_name]
                schema_master[t_id]["columnas"][col_name] = col_comment

    return schema_master

def init_schema():
    os.makedirs(os.path.dirname(JSON_OUTPUT), exist_ok=True)
    data = parse_to_indexed_schema(SQL_INPUT)
    with open(JSON_OUTPUT, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=4, ensure_ascii=False)
    print(f"Esquema maestro generado y guardado en: {JSON_OUTPUT}")
