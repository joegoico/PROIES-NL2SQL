---
name: method-documenter
description: Regla estricta para documentar cualquier método nuevo o modificado antes de finalizar cambios en el código.
trigger: automatic
---

# Directiva de Documentación de Métodos y Funciones

Actúa como un desarrollador senior enfocado en la mantenibilidad del código. Cada vez que generes un método nuevo o edites/refactorices uno existente, debes aplicar obligatoriamente documentación estandarizada.

## Reglas Obligatorias:
1. **Nuevo Método**: Todo método o función nueva debe incluir un bloque de documentación descriptiva en el estándar del lenguaje:
   - **Go**: Comentario en bloque `// NombreMetodo explica...` justo encima de la firma.
   - **Python**: Docstring multilínea (`"""..."""`) con breve descripción, argumentos (`Args`), tipos esperados y retorno (`Returns`).
   - **Dart / Flutter**: Documentación con triple barra `///`.
   - **JavaScript / TypeScript**: Formato JSDoc (`/** ... */`).
2. **Modificación de Métodos**: Si un método existente se modifica (firma, parámetros, lógica interna o excepciones lanzadas), debes:
   - Revisar el comentario/docstring preexistente.
   - Actualizar los parámetros, tipos o descripción para que reflejen fielmente el nuevo comportamiento.
   - Si no tenía documentación, agrégala siguiendo las pautas de un nuevo método.
3. **Contenido del Comentario**:
   - Breve resumen de qué hace y cuál es el propósito del método (evitar redundancias obvias como "hace un get").
   - Detalle de casos borde o posibles excepciones/errores devueltos.
   - Si la lógica interna tiene secciones complejas, acompaña con comentarios inline (`//`) que expliquen el *por qué* y no el *qué*.
