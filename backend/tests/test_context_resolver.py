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
        "¿Qué proyectos tienen estas organizaciones?",
        "¿Cuántos proyectos tienen esas fundaciones?",
        "¿Cuáles son los ingresos de estos actores?",
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


@pytest.mark.parametrize(
    "historial, pregunta, esperada",
    [
        (
            [
                "¿Cuántas organizaciones hay?",
                "¿Cuántas organizaciones reciben aportes externos?",
            ],
            "¿Cuántas de esas son rurales?",
            "¿Cuántas organizaciones que reciben aportes externos son rurales?",
        ),
        (
            [
                "¿Cuántas organizaciones hay?",
                "¿Cuántas organizaciones rurales hay?",
            ],
            "¿Cuántas de esas tienen personería jurídica?",
            "¿Cuántas organizaciones rurales tienen personería jurídica?",
        ),
    ],
)
def test_referente_conserva_condicion_de_pregunta_intermedia(
    resolver, historial, pregunta, esperada
):
    # Arrange + Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


@pytest.mark.parametrize(
    "historial, pregunta, esperada",
    [
        (
            ["¿Cuántas organizaciones están activas?"],
            "¿Cuántas de esas son rurales?",
            "¿Cuántas organizaciones que están activas son rurales?",
        ),
        (
            ["¿Cuántas organizaciones reciben aportes externos?"],
            "¿Y cuántas realizan evaluaciones?",
            "¿Y cuántas organizaciones que reciben aportes externos realizan evaluaciones?",
        ),
    ],
)
def test_referente_con_predicado_verbal_se_preserva_como_clausula_relativa(
    resolver, historial, pregunta, esperada
):
    # Arrange + Act
    resultado = resolver.resolver(pregunta, historial)

    # Assert
    assert resultado.pregunta_resuelta == esperada
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
        # Dos referentes plurales coordinados con modificadores
        (
            ["¿Cuántas organizaciones sociales y fundaciones privadas hay?"],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
        # Dos entidades nombradas posibles para "el mismo" (incluyendo preposición "de" en ambas)
        (
            ["¿Qué diferencia hay entre Cáritas Tandil y Cruz Roja?"],
            "¿Cuántos recursos humanos tiene el mismo?",
        ),
        (
            [
                "¿Cómo se comparan los ingresos de Cáritas Tandil y de Cruz Roja Argentina?"
            ],
            "¿Cuántos recursos humanos tiene el mismo?",
        ),
        (
            [
                "¿Cuál es la situación jurídica de Cáritas Tandil y Cruz Roja Argentina?"
            ],
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
        # Mismo núcleo con filtros distintos → conjuntos diferentes
        (
            [
                "¿Cuántas organizaciones rurales hay?",
                "¿Cuántas organizaciones urbanas hay?",
            ],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
        # Mismo núcleo con predicados incompatibles → conjuntos diferentes
        (
            [
                "¿Cuántas organizaciones rurales hay?",
                "¿Cuántas organizaciones realizan evaluaciones?",
            ],
            "¿Cuántas de esas tienen personería jurídica?",
        ),
        (
            [
                "¿Cuántas organizaciones reciben aportes externos?",
                "¿Cuántas organizaciones realizan evaluaciones?",
            ],
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


# ─────────────────────────────────────────────────────────────────────────────
# Fase RED — 1. Preguntas autónomas y referencias ambiguas (casos explícitos)
# ─────────────────────────────────────────────────────────────────────────────

def test_red_pregunta_autonoma_con_nucleo_no_sustituye_por_otro_antecedente(resolver):
    historial = ["¿Cuántas organizaciones hay?", "¿Cuántos actores hay?"]
    pregunta = "¿Y cuántos actores hay?"

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


def test_red_elipsis_con_multiples_referentes_femeninos_se_abstiene(resolver):
    historial = ["¿Cuántas organizaciones hay?", "¿Cuántas capacitaciones hay?"]
    pregunta = "¿Y cuántas están activas?"

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


def test_red_refinamiento_por_modificador_preserva_filtro_y_se_abstiene_si_es_ambiguo(
    resolver,
):
    # Refinamiento inequívoco (conjunto general -> subconjunto rural): preserva condición
    historial_refinado = [
        "¿Cuántas organizaciones hay?",
        "¿Cuántas organizaciones rurales hay?",
    ]
    pregunta = "¿Cuántas de esas tienen personería jurídica?"

    res_refinado = resolver.resolver(pregunta, historial_refinado)

    assert res_refinado.pregunta_resuelta == (
        "¿Cuántas organizaciones rurales tienen personería jurídica?"
    )
    assert res_refinado.uso_contexto is True

    # Secuencia inversa (subconjunto rural -> conjunto general): no es refinamiento, se abstiene
    historial_ambiguo = [
        "¿Cuántas organizaciones rurales hay?",
        "¿Cuántas organizaciones hay?",
    ]
    res_ambiguo = resolver.resolver(pregunta, historial_ambiguo)

    assert res_ambiguo.pregunta_resuelta == pregunta
    assert res_ambiguo.uso_contexto is False


def test_red_refinamiento_por_predicado_preserva_condicion_y_se_abstiene_si_es_ambiguo(
    resolver,
):
    # Refinamiento inequívoco (conjunto general -> subconjunto con predicado): preserva condición
    historial_refinado = [
        "¿Cuántas organizaciones hay?",
        "¿Cuántas organizaciones están activas?",
    ]
    pregunta = "¿Cuántas de esas son rurales?"

    res_refinado = resolver.resolver(pregunta, historial_refinado)

    assert res_refinado.pregunta_resuelta == (
        "¿Cuántas organizaciones que están activas son rurales?"
    )
    assert res_refinado.uso_contexto is True

    # Secuencia inversa (subconjunto con predicado -> conjunto general): ambiguo, se abstiene
    historial_ambiguo = [
        "¿Cuántas organizaciones están activas?",
        "¿Cuántas organizaciones hay?",
    ]
    res_ambiguo = resolver.resolver(pregunta, historial_ambiguo)

    assert res_ambiguo.pregunta_resuelta == pregunta
    assert res_ambiguo.uso_contexto is False


def test_red_elipsis_con_antecedente_incompatible_en_genero_se_abstiene(resolver):
    historial = ["¿Cuántas organizaciones hay?"]
    pregunta = "¿Y cuántos son externos?"

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


def test_red_referencia_adicional_irresoluble_impide_reescritura_parcial(resolver):
    historial = ["¿Cuántas organizaciones hay?"]
    pregunta = "¿Cuántas de esas tienen más recursos humanos que el mismo?"

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Fase RED — 2. Detección de estructuras verbales
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "pregunta, esperada",
    [
        # Verbos regulares e irregulares en presente y pretérito
        (
            "¿Y cuántas trabajan con comedores?",
            "¿Y cuántas organizaciones trabajan con comedores?",
        ),
        (
            "¿Y cuántas tienen convenio?",
            "¿Y cuántas organizaciones tienen convenio?",
        ),
        (
            "¿Y cuántas fueron relevadas?",
            "¿Y cuántas organizaciones fueron relevadas?",
        ),
        # Perífrasis verbales
        (
            "¿Y cuántas van a participar?",
            "¿Y cuántas organizaciones van a participar?",
        ),
        (
            "¿Y cuántas pueden recibir subsidios?",
            "¿Y cuántas organizaciones pueden recibir subsidios?",
        ),
        (
            "¿Y cuántas han presentado balances?",
            "¿Y cuántas organizaciones han presentado balances?",
        ),
        # Verbos conjugados fuera de las listas/sufijos sin tilde actuales (futuro y pretérito fuerte)
        (
            "¿Y cuántas recibirán subsidios?",
            "¿Y cuántas organizaciones recibirán subsidios?",
        ),
        (
            "¿Y cuántas tendrán personería jurídica?",
            "¿Y cuántas organizaciones tendrán personería jurídica?",
        ),
        (
            "¿Y cuántas produjeron informes?",
            "¿Y cuántas organizaciones produjeron informes?",
        ),
        (
            "¿Y cuántas volverán a participar?",
            "¿Y cuántas organizaciones volverán a participar?",
        ),
    ],
)
def test_red_deteccion_estructuras_verbales_en_elipsis(resolver, pregunta, esperada):
    historial = ["¿Cuántas organizaciones hay?"]

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


@pytest.mark.parametrize(
    "pregunta",
    [
        # Palabras terminadas en -an o -en que NO funcionan como verbos tras demostrativo
        "¿Cuántos proyectos tienen esas gran organizaciones?",
        "¿Qué alcance tienen estos plan estratégicos?",
        # Pregunta con sustantivo/adjetivo en -an/-en tras cuantificador que no es verbo
        "¿Cuántos gran impacto generaron?",
        "¿Cuántos plan anual presentaron?",
    ],
)
def test_red_palabras_terminadas_en_an_o_en_no_verbales_no_disparan_falso_positivo(
    resolver, pregunta
):
    historial = ["¿Cuántas organizaciones hay?", "¿Cuántos proyectos hay?"]

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


@pytest.mark.parametrize(
    "historial, pregunta, esperada",
    [
        # Modificadores con palabras terminadas en -an ("San Juan", "gran", "plan") no deben
        # confundirse con el verbo del predicado al analizar el antecedente
        (
            ["¿Cuántas organizaciones de San Juan hay?"],
            "¿Cuántas de esas son rurales?",
            "¿Cuántas organizaciones de San Juan son rurales?",
        ),
        (
            ["¿Cuántas organizaciones de San Juan reciben subsidios?"],
            "¿Cuántas de esas son rurales?",
            "¿Cuántas organizaciones de San Juan que reciben subsidios son rurales?",
        ),
        (
            ["¿Cuántas organizaciones con plan anual reciben subsidios?"],
            "¿Cuántas de esas son rurales?",
            "¿Cuántas organizaciones con plan anual que reciben subsidios son rurales?",
        ),
    ],
)
def test_red_modificadores_terminados_en_an_no_se_parten_como_verbos(
    resolver, historial, pregunta, esperada
):
    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


# ─────────────────────────────────────────────────────────────────────────────
# Fase RED — 3. Extracción de antecedentes plurales
# ─────────────────────────────────────────────────────────────────────────────

def test_red_conteo_existencial_seguido_de_restriccion_por_modificador_y_predicado(
    resolver,
):
    historial = ["¿Cuántas organizaciones hay?"]

    res_modificador = resolver.resolver("¿Cuántas de esas son rurales?", historial)
    res_predicado = resolver.resolver(
        "¿Cuántas de esas tienen personería jurídica?", historial
    )

    assert res_modificador.pregunta_resuelta == "¿Cuántas organizaciones son rurales?"
    assert res_modificador.uso_contexto is True
    assert (
        res_predicado.pregunta_resuelta
        == "¿Cuántas organizaciones tienen personería jurídica?"
    )
    assert res_predicado.uso_contexto is True


def test_red_conteo_con_predicado_distingue_clausula_autorizada_de_no_autorizada(
    resolver,
):
    pregunta = "¿Cuántas de esas son rurales?"

    # Autorizado: sujeto nominal único y predicado verbal explícito -> cláusula relativa
    res_autorizado = resolver.resolver(
        pregunta, ["¿Cuántas organizaciones están activas?"]
    )
    assert res_autorizado.pregunta_resuelta == (
        "¿Cuántas organizaciones que están activas son rurales?"
    )
    assert res_autorizado.uso_contexto is True

    # No autorizado: pregunta previa con predicado pero sin sujeto nominal explícito
    res_sin_sujeto = resolver.resolver(pregunta, ["¿Cuántas están activas?"])
    assert res_sin_sujeto.pregunta_resuelta == pregunta
    assert res_sin_sujeto.uso_contexto is False

    # No autorizado: pregunta previa con núcleos coordinados en el sujeto del predicado
    res_coordinado = resolver.resolver(
        pregunta, ["¿Cuántas organizaciones y asociaciones están activas?"]
    )
    assert res_coordinado.pregunta_resuelta == pregunta
    assert res_coordinado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Fase RED — 4. Entidades nombradas
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "historial, esperada",
    [
        # Entidad entrecomillada de varias palabras
        (
            ['¿Cuál es la situación jurídica de "Cáritas Tandil"?'],
            "¿Cuántos recursos humanos tiene Cáritas Tandil?",
        ),
        # Entidad entrecomillada de una sola palabra
        (
            ['¿Cuál es la situación jurídica de "Cáritas"?'],
            "¿Cuántos recursos humanos tiene Cáritas?",
        ),
        # Nombre propio de dos o más palabras sin comillas
        (
            ["¿Cuál es la situación jurídica de Cruz Roja Argentina?"],
            "¿Cuántos recursos humanos tiene Cruz Roja Argentina?",
        ),
    ],
)
def test_red_entidades_nombradas_validas_se_resuelven(resolver, historial, esperada):
    pregunta = "¿Cuántos recursos humanos tiene el mismo?"

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == esperada
    assert resultado.uso_contexto is True


@pytest.mark.parametrize(
    "historial",
    [
        # Entidad de una sola palabra sin comillas (no reconocible sin NER)
        ["¿Cuál es la situación jurídica de Cáritas?"],
        # Varias entidades entrecomilladas en la misma pregunta
        ['¿Qué convenio firmaron "Cáritas Tandil" y "Cruz Roja Argentina"?'],
        # Varias entidades capitalizadas en la misma pregunta
        ["¿Qué convenio firmaron Cáritas Tandil y Cruz Roja Argentina?"],
        # Una entidad entrecomillada y otra no entrecomillada en la misma pregunta
        ['¿Qué convenio firmaron "Cáritas Tandil" y Cruz Roja Argentina?'],
        # Una entidad de una palabra y otra de dos palabras en una comparación
        ["¿Qué diferencia hay entre Cáritas y Cruz Roja Argentina?"],
    ],
)
def test_red_entidades_nombradas_ambiguas_o_insuficientes_se_abstienen(
    resolver, historial
):
    pregunta = "¿Cuántos recursos humanos tiene el mismo?"

    resultado = resolver.resolver(pregunta, historial)

    assert resultado.pregunta_resuelta == pregunta
    assert resultado.uso_contexto is False


# ─────────────────────────────────────────────────────────────────────────────
# Fase RED — 5. Contrato de abstención integral
# ─────────────────────────────────────────────────────────────────────────────

@pytest.mark.parametrize(
    "historial, pregunta",
    [
        # Dos referencias pronominales de distinto género cuando solo uno existe en el historial
        (
            ["¿Cuántas organizaciones hay?"],
            "¿Cuántas de esas articulan con esos?",
        ),
        # Referencia pronominal plural válida pero referencia de entidad ambigua
        (
            [
                "¿Cuántas organizaciones hay?",
                '¿Qué relación hay entre "Cáritas Tandil" y Cruz Roja Argentina?',
            ],
            "¿Cuántas de esas articulan con el mismo?",
        ),
    ],
)
def test_red_contrato_de_abstencion_sin_sustitucion_parcial_ni_invencion(
    resolver, historial, pregunta
):
    resultado = resolver.resolver(pregunta, historial)

    assert resultado == ResultadoResolucion(
        pregunta_original=pregunta,
        pregunta_resuelta=pregunta,
        uso_contexto=False,
    )

