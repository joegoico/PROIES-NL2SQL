import dataclasses

import pytest

from backend.custom.context_resolver import ContextResolver, ResultadoResolucion


@pytest.fixture
def resolver():
    return ContextResolver()


# ─────────────────────────────────────────────────────────────────────────────
# Contrato v3 (arquitectura por etapas)
#
#  1. Etapa 1 — Detector de referencias explícitas: evalúa una estructura
#     clasificada de patrones (pronombres/demostrativos plurales como «esas»,
#     «esos», «ellas», «ellos», «estas», «estos», construcciones partitivas y
#     expresiones de identidad como «el mismo» / «la misma»).
#  2. Etapa 2 — Heurística de respaldo: solo si el detector explícito no
#     encuentra referencias, evalúa si la pregunta presenta dependencia
#     implícita por elipsis nominal (ej. «¿Y cuántas tienen donaciones?»,
#     «¿Cuántas son rurales?»).
#  3. Etapa 3 — Resolución: recorre el historial de la pregunta más reciente a
#     la más antigua buscando antecedentes compatibles en género y tipo.
#  4. Sin evidencia suficiente de un referente único → devuelve la pregunta
#     original exacta y uso_contexto=False.
#  5. La concordancia de género es condición de compatibilidad (excluye
#     candidatos), nunca prueba suficiente para desempatar entre candidatos
#     distintos compatibles.
#  6. Varios candidatos compatibles distintos (diferente núcleo o diferentes
#     modificadores/filtros, incluido un conteo con predicado que define un
#     subconjunto distinto) → abstención. Solo la misma expresión repetida
#     cuenta como un único referente.
#  7. Referencias múltiples: todas se resuelven o ninguna (sin sustitución
#     parcial).
#  8. El historial original no se modifica.
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
        "¿Y cuántos actores hay?",
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
# Etapa 1 — Detector de referencias explícitas y variantes
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
            "¿Cuántas de estas están activas?",
            "¿Cuántas organizaciones están activas?",
        ),
        (
            "¿Cuántos recursos financieros recibieron esas?",
            "¿Cuántos recursos financieros recibieron las organizaciones?",
        ),
        (
            "¿Cuántos recursos financieros recibieron estas?",
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


@pytest.mark.parametrize(
    "pregunta",
    [
        "¿Cuántos recursos humanos tiene el mismo?",
        "¿Cuántos recursos humanos tiene la misma?",
    ],
)
def test_el_mismo_o_la_misma_se_reemplaza_por_la_entidad_nombrada_previa(
    resolver, pregunta
):
    # Arrange
    historial = ["¿Cuál es la situación jurídica de Cáritas Tandil?"]

    # Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == (
        "¿Cuántos recursos humanos tiene Cáritas Tandil?"
    )
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Etapa 2 — Heurística de respaldo (dependencia implícita por elipsis nominal)
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "historial, pregunta, esperada",
    [
        (
            ["¿Cuántas organizaciones hay?"],
            "¿Y cuántas tienen donaciones?",
            "¿Y cuántas organizaciones tienen donaciones?",
        ),
        (
            ["¿Cuántas organizaciones rurales hay?"],
            "¿Cuántas tienen personería jurídica?",
            "¿Cuántas organizaciones rurales tienen personería jurídica?",
        ),
        (
            ["¿Cuántos actores hay?"],
            "¿Y cuántos son externos?",
            "¿Y cuántos actores son externos?",
        ),
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántos actores hay?"],
            "¿Y cuántas están activas?",
            "¿Y cuántas organizaciones están activas?",
        ),
    ],
)
def test_heuristica_de_respaldo_resuelve_dependencia_implicita_por_elipsis(
    resolver, historial, pregunta, esperada
):
    # Arrange + Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_original == pregunta
    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


@pytest.mark.parametrize(
    "historial, pregunta",
    [
        # Dos candidatos compatibles en género para la elipsis femenina
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántas capacitaciones hay?"],
            "¿Y cuántas están activas?",
        ),
        # Ningún candidato compatible en género (historial femenino, elipsis masculina)
        (
            ["¿Cuántas organizaciones hay?"],
            "¿Y cuántos son externos?",
        ),
        # Sin antecedente identificable
        (
            ["Hola, necesito consultar datos"],
            "¿Y cuántas tienen donaciones?",
        ),
    ],
)
def test_heuristica_de_respaldo_se_abstiene_sin_evidencia_suficiente(
    resolver, historial, pregunta
):
    # Arrange + Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Recorrido del historial — Referencia en una pregunta anterior
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
# La concordancia de género excluye candidatos incompatibles
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
# Misma expresión repetida = un único referente
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
# Ambigüedad: abstención con la pregunta original
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
        # Dos candidatos compatibles con distinto núcleo
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántas capacitaciones hay?"],
            "¿Cuántas de esas son rurales?",
        ),
        # El más reciente es incompatible; quedan dos compatibles con distinto núcleo
        (
            [
                "¿Cuántas organizaciones hay?",
                "¿Cuántas capacitaciones hay?",
                "¿Cuántos actores hay?",
            ],
            "¿Cuántas de esas son rurales?",
        ),
        # Dos entidades nombradas distintas en preguntas diferentes
        (
            [
                "¿Cuál es la situación jurídica de Cáritas Tandil?",
                "¿Cuál es la situación jurídica de Cruz Roja Argentina?",
            ],
            "¿Cuántos recursos humanos tiene el mismo?",
        ),
        # Mismo núcleo, pero uno es un subconjunto del otro (modificador nominal)
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántas organizaciones rurales hay?"],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
        # Mismo núcleo con filtros distintos → conjuntos diferentes
        (
            [
                "¿Cuántas organizaciones rurales hay?",
                "¿Cuántas organizaciones urbanas hay?",
            ],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
        # Mismo núcleo pero la segunda pregunta acota un subconjunto mediante predicado
        (
            ["¿Cuántas organizaciones hay?", "¿Cuántas organizaciones están activas?"],
            "¿Cuántas de esas son rurales?",
        ),
    ],
)
def test_ambiguedad_conserva_la_pregunta_original(resolver, historial, pregunta):
    # Arrange + Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Referencias múltiples: todas o ninguna
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
# El resolver no modifica el historial
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
