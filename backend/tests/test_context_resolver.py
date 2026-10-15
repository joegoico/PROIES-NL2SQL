import dataclasses

import pytest

from backend.custom.context_resolver import ContextResolver, ResultadoResolucion


@pytest.fixture
def resolver():
    return ContextResolver()


# ─────────────────────────────────────────────────────────────────────────────
# Contrato v2 (decisiones definitivas)
#
#  1. Se recorre TODO el historial, de la pregunta más reciente a la más
#     antigua.
#  2. Sin evidencia suficiente de un referente único → pregunta original
#     exacta y uso_contexto=False.
#  3. La concordancia de género es condición de compatibilidad (excluye
#     candidatos), nunca prueba suficiente para elegir entre candidatos.
#  4. Varios candidatos plausibles con distinto núcleo nominal → abstención.
#     No se elige el más reciente.
#  5. Compartir el núcleo nominal NO hace equivalentes a dos expresiones: si
#     difieren en filtros o modificadores («organizaciones» vs «organizaciones
#     rurales») son conjuntos distintos → abstención. Solo la MISMA expresión
#     repetida es un único referente.
#  6. Una pregunta de conteo intermedia con predicado/filtro («están
#     activas») que la heurística no puede preservar BLOQUEA la búsqueda
#     hacia preguntas más antiguas.
#  7. «Cambiando de tema» corta la búsqueda hacia las preguntas anteriores al
#     marcador. La pregunta que contiene el marcador abre el tema nuevo y sí
#     puede aportar referente.
#  8. Referencias múltiples: todas se resuelven o ninguna (sin sustitución
#     parcial).
#  9. El historial original no se modifica.
# ─────────────────────────────────────────────────────────────────────────────


# ─────────────────────────────────────────────────────────────────────────────
# Sin historial
# ─────────────────────────────────────────────────────────────────────────────

def test_sin_historial_devuelve_la_pregunta_original(resolver):
    # Arrange
    pregunta = "¿Cuántas de esas tienen personería jurídica?"

    # Act
    resultado = resolver.resolver(pregunta, [])

    # Assert
    assert resultado == ResultadoResolucion(
        pregunta_original=pregunta,
        pregunta_resuelta=pregunta,
        uso_contexto=False,
    )


# ─────────────────────────────────────────────────────────────────────────────
# Pregunta autónoma (sin contexto innecesario)
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "pregunta",
    [
        "¿Cuántas capacitaciones se dictaron?",
        "¿Cuántos recursos humanos tiene cada organización?",
        "Cambiando de tema, ¿cuántos actores hay?",
    ],
)
def test_pregunta_autonoma_no_arrastra_entidades_del_historial(resolver, pregunta):
    # Arrange
    historial = ["¿Cuántas organizaciones hay?", "¿Cuántos actores hay?"]

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Referencia en la última pregunta (candidato único)
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "pregunta, esperada",
    [
        (
            "¿Cuántas de esas tienen personería jurídica?",
            "¿Cuántas organizaciones tienen personería jurídica?",
        ),
        (
            "¿Cuántas de ellas son rurales?",
            "¿Cuántas organizaciones son rurales?",
        ),
        (
            "¿Cuántos recursos financieros recibieron esas?",
            "¿Cuántos recursos financieros recibieron las organizaciones?",
        ),
    ],
)
def test_referencia_plural_se_reemplaza_por_el_referente_del_historial(
    resolver, pregunta, esperada
):
    # Arrange
    historial = ["¿Cuántas organizaciones hay?"]

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_original == pregunta
    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


def test_conjuncion_entre_modificadores_no_se_considera_ambigua(resolver):
    # Arrange
    historial = ["¿Cuántas organizaciones rurales y urbanas hay?"]
    pregunta = "¿Cuántas de esas tienen personería jurídica?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántas organizaciones rurales y urbanas tienen personería jurídica?"
    )
    assert resultado.uso_contexto is True


def test_referente_conserva_el_filtro_de_la_pregunta_previa(resolver):
    # Arrange
    historial = ["¿Cuántas organizaciones rurales hay?"]
    pregunta = "¿Cuántas de esas tienen personería jurídica?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántas organizaciones rurales tienen personería jurídica?"
    )
    assert resultado.uso_contexto is True


def test_el_mismo_se_reemplaza_por_la_entidad_nombrada_en_la_pregunta_previa(resolver):
    # Arrange
    historial = ["¿Cuál es la situación jurídica de Cáritas Tandil?"]
    pregunta = "¿Cuántos recursos humanos tiene el mismo?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántos recursos humanos tiene Cáritas Tandil?"
    )
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 1 — Referencia en una pregunta anterior
# ─────────────────────────────────────────────────────────────────────────────

def test_resuelve_con_referente_de_una_pregunta_anterior(resolver):
    # Arrange
    historial = [
        "¿Cuántas organizaciones hay?",
        "¿Cuál es la situación jurídica de Cáritas Tandil?",
    ]
    pregunta = "¿Cuántas de esas son rurales?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == "¿Cuántas organizaciones son rurales?"
    assert resultado.uso_contexto is True


def test_el_mismo_se_resuelve_con_una_entidad_de_una_pregunta_anterior(resolver):
    # Arrange
    historial = [
        "¿Cuál es la situación jurídica de Cáritas Tandil?",
        "¿Cuántas organizaciones hay?",
    ]
    pregunta = "¿Cuántos recursos humanos tiene el mismo?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántos recursos humanos tiene Cáritas Tandil?"
    )
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 3 — La concordancia de género excluye candidatos incompatibles
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "pregunta, esperada",
    [
        # «esos» (masculino): solo «actores» es compatible
        (
            "¿Cuántos de esos son externos?",
            "¿Cuántos actores son externos?",
        ),
        # «esas» (femenino): «actores» queda excluido; el único compatible
        # es «organizaciones», de una pregunta más antigua
        (
            "¿Cuántas de esas son rurales?",
            "¿Cuántas organizaciones son rurales?",
        ),
    ],
)
def test_la_concordancia_de_genero_descarta_candidatos_incompatibles(
    resolver, pregunta, esperada
):
    # Arrange
    historial = [
        "¿Cuántas organizaciones hay?",
        "¿Cuántos actores hay?",
    ]

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 5 — Misma expresión repetida = un único referente
# ─────────────────────────────────────────────────────────────────────────────

def test_misma_expresion_plural_repetida_es_un_unico_referente(resolver):
    # Arrange
    historial = [
        "¿Cuántas organizaciones rurales hay?",
        "¿Cuántas organizaciones rurales existen?",
    ]
    pregunta = "¿Cuántas de esas tienen personería jurídica?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántas organizaciones rurales tienen personería jurídica?"
    )
    assert resultado.uso_contexto is True


def test_misma_entidad_repetida_en_varias_preguntas_no_es_ambigua(resolver):
    # Arrange
    historial = [
        "¿Cuál es la situación jurídica de Cáritas Tandil?",
        "¿Cuál es el domicilio de Cáritas Tandil?",
    ]
    pregunta = "¿Cuántos recursos humanos tiene el mismo?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántos recursos humanos tiene Cáritas Tandil?"
    )
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Decisiones 2, 4 y 5 — Ambigüedad: abstención con la pregunta original
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "historial, pregunta",
    [
        # Dos referentes plurales posibles en la misma pregunta
        (
            ["¿Cuántas organizaciones y cuántos actores hay?"],
            "¿Cuántas de esas son rurales?",
        ),
        # Dos entidades nombradas posibles para "el mismo"
        (
            ["¿Qué diferencia hay entre Cáritas Tandil y Cruz Roja?"],
            "¿Cuántos recursos humanos tiene el mismo?",
        ),
        # La pregunta previa no expone un referente identificable
        (
            ["Hola, necesito ayuda con unos datos"],
            "¿Cuántas de esas son rurales?",
        ),
        # Referente plural previo, pero "el mismo" pide una entidad singular nombrada
        (
            ["¿Cuántas organizaciones hay?"],
            "¿Cuántos recursos humanos tiene el mismo?",
        ),
        # Decisión 4: dos candidatos compatibles con distinto núcleo
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántas capacitaciones hay?"],
            "¿Cuántas de esas son rurales?",
        ),
        # Decisión 4: el más reciente es incompatible; quedan dos compatibles
        # con distinto núcleo → no se elige ninguno
        (
            [
                "¿Cuántas organizaciones hay?",
                "¿Cuántas capacitaciones hay?",
                "¿Cuántos actores hay?",
            ],
            "¿Cuántas de esas son rurales?",
        ),
        # Decisión 4: dos entidades nombradas distintas en preguntas diferentes
        (
            [
                "¿Cuál es la situación jurídica de Cáritas Tandil?",
                "¿Cuál es la situación jurídica de Cruz Roja Argentina?",
            ],
            "¿Cuántos recursos humanos tiene el mismo?",
        ),
        # Decisión 5: mismo núcleo, pero uno es un subconjunto del otro
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántas organizaciones rurales hay?"],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
        # Decisión 5: mismo núcleo con filtros distintos → conjuntos diferentes
        (
            [
                "¿Cuántas organizaciones rurales hay?",
                "¿Cuántas organizaciones urbanas hay?",
            ],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
    ],
)
def test_ambiguedad_conserva_la_pregunta_original(resolver, historial, pregunta):
    # Arrange
    # (historial y pregunta provistos por parametrize)

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 6 — Una pregunta intermedia con filtro bloquea la búsqueda
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "historial",
    [
        # Predicado «están activas»: el filtro no se puede preservar
        ["¿Cuántas organizaciones hay?", "¿Cuántas organizaciones están activas?"],
        # Otro filtro en forma de predicado
        [
            "¿Cuántas organizaciones hay?",
            "¿Cuántas organizaciones tienen personería jurídica?",
        ],
        # El bloqueo ocurre en profundidad: hay una pregunta más reciente que
        # no es de conteo y se ignora, pero el filtro intermedio corta la búsqueda
        [
            "¿Cuántas organizaciones hay?",
            "¿Cuántas organizaciones están activas?",
            "¿Cuál es la situación jurídica de Cáritas Tandil?",
        ],
    ],
)
def test_pregunta_intermedia_con_filtro_bloquea_la_busqueda_de_referentes_antiguos(
    resolver, historial
):
    # Arrange
    pregunta = "¿Cuántas de esas son rurales?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 7 — Cambio explícito de tema
# ─────────────────────────────────────────────────────────────────────────────

def test_marcador_de_cambio_de_tema_corta_la_busqueda_hacia_atras(resolver):
    # Arrange
    historial = [
        "¿Cuántas organizaciones hay?",
        "Cambiando de tema, ¿cuántos actores hay?",
    ]
    pregunta = "¿Cuántas de esas son rurales?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


def test_la_pregunta_con_el_marcador_abre_el_tema_y_puede_aportar_referente(resolver):
    # Arrange
    historial = [
        "¿Cuántas organizaciones hay?",
        "Cambiando de tema, ¿cuántos actores hay?",
    ]
    pregunta = "¿Cuántos de esos son externos?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == "¿Cuántos actores son externos?"
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 8 — Referencias múltiples: todas o ninguna
# ─────────────────────────────────────────────────────────────────────────────

def test_referencias_multiples_se_resuelven_con_preguntas_distintas(resolver):
    # Arrange
    historial = [
        "¿Cuántas organizaciones hay?",
        "¿Cuál es la situación jurídica de Cáritas Tandil?",
    ]
    pregunta = "¿Cuántas de esas tienen más recursos humanos que el mismo?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántas organizaciones tienen más recursos humanos que Cáritas Tandil?"
    )
    assert resultado.uso_contexto is True


@pytest.mark.parametrize(
    "historial",
    [
        # Se puede resolver el plural, no la entidad nombrada
        ["¿Cuántas organizaciones hay?"],
        # Se puede resolver la entidad nombrada, no el plural
        ["¿Cuál es la situación jurídica de Cáritas Tandil?"],
        # La entidad es única, pero el plural es ambiguo (dos núcleos femeninos)
        [
            "¿Cuántas organizaciones hay?",
            "¿Cuántas capacitaciones hay?",
            "¿Cuál es la situación jurídica de Cáritas Tandil?",
        ],
    ],
)
def test_si_una_referencia_no_se_resuelve_no_hay_sustitucion_parcial(
    resolver, historial
):
    # Arrange
    pregunta = "¿Cuántas de esas tienen más recursos humanos que el mismo?"

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Decisión 9 — El resolver no modifica el historial
# ─────────────────────────────────────────────────────────────────────────────

def test_resolver_no_modifica_el_historial(resolver):
    # Arrange
    historial = [
        "¿Cuántas organizaciones hay?",
        "¿Cuántos actores hay?",
    ]
    copia = list(historial)

    # Act
    resultado = resolver.resolver("¿Cuántas de esas son rurales?", historial)

    # Assert
    assert resultado.uso_contexto is True
    assert historial == copia


# ─────────────────────────────────────────────────────────────────────────────
# Contrato de salida y validación de entrada
# ─────────────────────────────────────────────────────────────────────────────

def test_resultado_es_inmutable(resolver):
    # Arrange
    resultado = resolver.resolver("¿Cuántas capacitaciones hay?", [])

    # Act + Assert
    with pytest.raises(dataclasses.FrozenInstanceError):
        resultado.pregunta_resuelta = "otra"


def test_resultado_expone_solo_los_campos_necesarios():
    # Arrange
    nombres = {f.name for f in dataclasses.fields(ResultadoResolucion)}

    # Act + Assert
    assert nombres == {"pregunta_original", "pregunta_resuelta", "uso_contexto"}


@pytest.mark.parametrize("pregunta", ["", "   ", None])
def test_pregunta_vacia_lanza_value_error(resolver, pregunta):
    # Arrange
    historial = ["¿Cuántas organizaciones hay?"]

    # Act + Assert
    with pytest.raises(ValueError):
        resolver.resolver(pregunta, historial)
