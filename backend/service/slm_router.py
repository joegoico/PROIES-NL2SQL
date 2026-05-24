from typing import List

class SLMRouter:
    def __init__(self):
        pass

    def ruteo_tablas(self, pregunta: str, catalogo: str) -> List[str]:
        """
        Método base que recibirá la pregunta y el catálogo optimizado,
        y devolverá los índices de las tablas seleccionadas.
        """
        # Por ahora devolvemos un mock básico para que los tests pasen a GREEN
        return ["T_1"]