from __future__ import annotations

from pathlib import Path
import re
from typing import Any

from backend.service.score_calculator import ScoreCalculator, CalcularScoreNombreTabla, CalcualrScoreDescripcionTabla, CalcularScoreNombreColumna

from backend.utils.text_utils import TextUtils
class SchemaPrefilter:
    """
    Pre-filtra tablas relevantes antes de invocar el SLM router.

    Objetivo:
        Reducir el tamaño del catálogo enviado al modelo.
    """

    _SQL_SCHEME_PATH = (
        Path(__file__).resolve().parents[1] / "scripts_sql" / "01_create_scheme.sql"
    )
    _FK_DDL_PATTERN = re.compile(
        r"ALTER\s+TABLE\s+([a-zA-Z0-9_.]+)\s+ADD\s+CONSTRAINT\s+[a-zA-Z0-9_]+\s+"
        r"FOREIGN\s+KEY\s*\([^)]+\)\s*REFERENCES\s+([a-zA-Z0-9_.]+)",
        re.IGNORECASE,
    )
    _FK_COMMENT_PATTERN = re.compile(
        r"\bFK\s+a\s+([a-zA-Z0-9_.]+)",
        re.IGNORECASE,
    )
    _SQL_FOREIGN_KEYS_CACHE: dict[str, set[str]] | None = None

    def __init__(self):
        # INYECTADO: Inicialización de la lista de calculadores
        self.score_calculators: list[ScoreCalculator] = [
            CalcularScoreNombreTabla(),
            CalcualrScoreDescripcionTabla(),
            CalcularScoreNombreColumna()
        ]
        self.text_utils = TextUtils()

    @staticmethod
    def _normalizar_nombre_tabla(nombre: str) -> str:
        """Normaliza el identificador real de una tabla eliminando prefijos de esquema.

        Args:
            nombre (str): Nombre real de la tabla en el esquema o DDL.

        Returns:
            str: Nombre de tabla en minúsculas sin el prefijo 'public.'.
        """
        return nombre.strip().lower().removeprefix("public.")

    @classmethod
    def _obtener_fks_sql(cls) -> dict[str, set[str]]:
        """Extrae y almacena en caché las relaciones de claves foráneas definidas en el DDL SQL.

        Lee el archivo `01_create_scheme.sql` una única vez por proceso para evitar
        penalizar la latencia del prefiltro durante ejecuciones repetidas.

        Returns:
            dict[str, set[str]]: Mapa de tabla origen normalizada a conjunto de tablas
            referenciadas mediante restricciones FOREIGN KEY.
        """
        if cls._SQL_FOREIGN_KEYS_CACHE is not None:
            return cls._SQL_FOREIGN_KEYS_CACHE

        relaciones: dict[str, set[str]] = {}
        if cls._SQL_SCHEME_PATH.exists():
            contenido_sql = cls._SQL_SCHEME_PATH.read_text(encoding="utf-8")
            for origen, destino in cls._FK_DDL_PATTERN.findall(contenido_sql):
                origen_norm = cls._normalizar_nombre_tabla(origen)
                destino_norm = cls._normalizar_nombre_tabla(destino)
                relaciones.setdefault(origen_norm, set()).add(destino_norm)

        cls._SQL_FOREIGN_KEYS_CACHE = relaciones
        return relaciones

    def _extraer_relaciones_puente_catalogo(
        self,
        esquema_maestro: dict[str, Any],
    ) -> list[tuple[str, str]]:
        """Identifica pares estructurales verificables (tabla_puente, tabla_catalogo) en el esquema.

        Combina las restricciones formales FOREIGN KEY de `01_create_scheme.sql` con las
        referencias explícitas `(FK a <tabla>)` documentadas en las descripciones de columnas
        del esquema maestro, restringiendo el origen a tablas de relación reconocidas.

        Args:
            esquema_maestro (dict[str, Any]): Diccionario de tablas indexadas con sus metadatos.

        Returns:
            list[tuple[str, str]]: Lista ordenada de tuplas `(id_puente, id_catalogo)` con
            vínculo estructural válido hacia un catálogo distinto de `organizacion`.
        """
        nombre_a_indice: dict[str, str] = {
            self._normalizar_nombre_tabla(tabla.get("nombre_real", "")): indice
            for indice, tabla in esquema_maestro.items()
            if tabla.get("nombre_real")
        }

        fks_sql = self._obtener_fks_sql()
        pares_estructurales: set[tuple[str, str]] = set()

        for indice_origen, tabla in esquema_maestro.items():
            nombre_origen = self._normalizar_nombre_tabla(tabla.get("nombre_real", ""))
            if not self.text_utils._es_tabla_relacion(nombre_origen):
                continue

            destinos_fk: set[str] = set(fks_sql.get(nombre_origen, set()))
            columnas = tabla.get("columnas") or {}
            for desc_columna in columnas.values():
                if isinstance(desc_columna, str):
                    for match_fk in self._FK_COMMENT_PATTERN.findall(desc_columna):
                        destinos_fk.add(self._normalizar_nombre_tabla(match_fk))

            for nombre_destino in destinos_fk:
                if nombre_destino != "organizacion" and nombre_destino in nombre_a_indice:
                    pares_estructurales.add(
                        (indice_origen, nombre_a_indice[nombre_destino])
                    )

        return sorted(pares_estructurales)

    def _aplicar_co_recuperacion_estructural(
        self,
        tokens_pregunta: set[str],
        esquema_maestro: dict[str, Any],
        scores_lexicos: dict[str, float],
    ) -> dict[str, float]:
        """Aplica la propagación estructural entre tablas puente activas y sus catálogos FK.

        Mantiene intactos los puntajes originales de los calculadores léxicos y opera como
        una etapa posterior sobre pares `(puente, catalogo)` respaldados por metadatos FK:
        1. Si una tabla puente está en el Top-10 léxico y posee coincidencias específicas
           (en su propio contenido o compartidas en el nombre del catálogo), co-recupera
           el catálogo referenciado.
        2. Si un catálogo referenciado está consolidado en el Top-10 con alta relevancia
           léxica (`>= 25.0`), promueve o desempata estructuralmente a su tabla puente.
        3. Si los metadatos de columnas del par estructural `(puente, catalogo)` presentan
           coincidencia específica múltiple con la consulta, promueve el par al Top-10.

        Args:
            tokens_pregunta (set[str]): Conjunto de tokens normalizados de la pregunta.
            esquema_maestro (dict[str, Any]): Diccionario completo del esquema maestro.
            scores_lexicos (dict[str, float]): Puntajes léxicos base por índice de tabla (> 0).

        Returns:
            dict[str, float]: Diccionario de puntajes ajustados tras la co-recuperación estructural.
        """
        if not scores_lexicos:
            return {}

        scores_finales = dict(scores_lexicos)
        relaciones = self._extraer_relaciones_puente_catalogo(esquema_maestro)
        if not relaciones:
            return scores_finales

        ranking_lexico = sorted(
            scores_lexicos.items(),
            key=lambda item: item[1],
            reverse=True,
        )
        top_10_ids = {indice for indice, _ in ranking_lexico[:10]}
        piso_top_10 = ranking_lexico[9][1] if len(ranking_lexico) >= 10 else 10.0

        tokens_especificos_pregunta = {
            token
            for token in tokens_pregunta
            if self.text_utils.son_similares(token, "organizacion")
            < self.text_utils.UMBRAL_SIMILITUD
        }
        menciona_organizacion = len(tokens_especificos_pregunta) < len(tokens_pregunta)

        for id_puente, id_catalogo in relaciones:
            score_puente = scores_lexicos.get(id_puente, 0.0)
            score_catalogo = scores_lexicos.get(id_catalogo, 0.0)
            tabla_puente = esquema_maestro[id_puente]
            tabla_catalogo = esquema_maestro[id_catalogo]
            nombre_puente = self._normalizar_nombre_tabla(
                tabla_puente.get("nombre_real", "")
            )

            # En el esquema ObSoC v2.4 las tablas puente abrevian 'organizacion' como '_org',
            # por lo que una consulta sobre organizaciones las activa estructuralmente como candidatas.
            puente_activo_por_org = (
                nombre_puente.endswith("_org") and menciona_organizacion
            )
            if score_puente <= 0 and score_catalogo <= 0 and not puente_activo_por_org:
                continue

            texto_puente = " ".join(
                [
                    tabla_puente.get("nombre_real", ""),
                    tabla_puente.get("descripcion_tabla", ""),
                    *list((tabla_puente.get("columnas") or {}).keys()),
                ]
            )
            tokens_puente_especificos = {
                token
                for token in self.text_utils.normalizar_texto(texto_puente)
                if self.text_utils.son_similares(token, "organizacion")
                < self.text_utils.UMBRAL_SIMILITUD
                and token != "org"
            }
            matches_puente_especificos = self.text_utils.contar_matches(
                tokens_especificos_pregunta,
                tokens_puente_especificos,
            )

            tokens_nombre_catalogo = self.text_utils.normalizar_texto(
                tabla_catalogo.get("nombre_real", "")
            )
            matches_nombre_catalogo = self.text_utils.contar_matches(
                tokens_especificos_pregunta,
                tokens_nombre_catalogo,
            )

            texto_cols_catalogo = " ".join(
                str(valor)
                for valor in [
                    *(tabla_catalogo.get("columnas") or {}).values(),
                    *(tabla_puente.get("columnas") or {}).values(),
                ]
            )
            tokens_cols_catalogo = {
                token
                for token in self.text_utils.normalizar_texto(texto_cols_catalogo)
                if self.text_utils.son_similares(token, "organizacion")
                < self.text_utils.UMBRAL_SIMILITUD
            }
            matches_cols_catalogo = self.text_utils.contar_matches(
                tokens_especificos_pregunta,
                tokens_cols_catalogo,
            )

            # 1. Propagación puente -> catálogo cuando el puente es relevante en Top-10
            if id_puente in top_10_ids and (
                matches_nombre_catalogo > 0 or matches_puente_especificos >= 2
            ):
                score_propagado = max(score_catalogo, score_puente - 0.1)
                scores_finales[id_catalogo] = max(
                    scores_finales.get(id_catalogo, 0.0),
                    score_propagado,
                )

            # 2. Refuerzo estructural al puente cuando el catálogo referenciado domina el Top-10
            if score_catalogo >= 25.0 and id_catalogo in top_10_ids:
                scores_finales[id_puente] = max(
                    scores_finales.get(id_puente, 0.0),
                    score_puente + 0.5,
                    piso_top_10 + 0.5,
                )

            # 3. Confirmación estructural bidireccional por metadatos específicos del par FK
            if matches_cols_catalogo >= 2:
                score_estructural = max(piso_top_10 + 1.0, score_puente + 5.0)
                scores_finales[id_puente] = max(
                    scores_finales.get(id_puente, 0.0),
                    score_estructural,
                )
                scores_finales[id_catalogo] = max(
                    scores_finales.get(id_catalogo, 0.0),
                    score_estructural - 0.1,
                )

        return scores_finales
    
    def obtener_indices(
        self,
        pregunta: str,
        esquema_maestro: dict[str, Any],
        top_k: int = 10,
    ) -> list[str]:
        """
        Retorna los índices de tablas más relevantes para la pregunta.
        """

        ranking = self.obtener_ranking(
            pregunta=pregunta,
            esquema_maestro=esquema_maestro,
        )

        return [
            indice
            for indice, _ in ranking[:top_k]
        ]

    def _calcular_score_tabla(
        self,
        tokens_pregunta: set[str],
        tabla: dict[str, Any],
        debug: bool = False,
    ) -> float:
        score_total = 0

        if debug:
            print(f"\nTabla: {tabla['nombre_real']}")

        for calculator in self.score_calculators:
            score = calculator.calcular_score(
                tokens_pregunta,
                tabla,
            )

            if debug:
                print(
                    f"{calculator.__class__.__name__:35} -> {score}"
                )

            score_total += score

        if debug:
            print(f"TOTAL{'':31} -> {score_total}")

        return score_total

    def obtener_ranking(
        self,
        pregunta: str,
        esquema_maestro: dict[str, Any],
    ) -> list[tuple[str, float]]:
        """Calcula el ranking completo de tablas combinando puntaje léxico y co-recuperación estructural.

        Args:
            pregunta (str): Consulta en lenguaje natural del usuario.
            esquema_maestro (dict[str, Any]): Diccionario de tablas candidatas y sus metadatos.

        Returns:
            list[tuple[str, float]]: Lista de tuplas `(indice_tabla, score)` ordenada de mayor a menor.

        Raises:
            ValueError: Si `pregunta` o `esquema_maestro` están vacíos.
        """
        if not pregunta or not pregunta.strip():
            raise ValueError("La pregunta no puede estar vacía.")

        if not esquema_maestro:
            raise ValueError("El esquema_maestro no puede estar vacío.")

        tokens_pregunta = self.text_utils.normalizar_texto(
            pregunta
        )

        scores_lexicos: dict[str, float] = {}

        for indice, tabla in esquema_maestro.items():
            score = self._calcular_score_tabla(
                tokens_pregunta=tokens_pregunta,
                tabla=tabla,
            )

            if score > 0:
                scores_lexicos[indice] = float(score)

        scores_finales = self._aplicar_co_recuperacion_estructural(
            tokens_pregunta=tokens_pregunta,
            esquema_maestro=esquema_maestro,
            scores_lexicos=scores_lexicos,
        )

        scores: list[tuple[str, float]] = list(scores_finales.items())

        scores.sort(
            key=lambda x: x[1],
            reverse=True,
        )

        return scores