---
name: tdd-aaa-runner
description: Guía de ejecución estricta para desarrollo guiado por pruebas (TDD) estructurado bajo el patrón Arrange-Act-Assert (AAA).
trigger: automatic
---

# Directiva de TDD y Patrón AAA

Actúa como un especialista en calidad de software y TDD. Cada vez que se te pida implementar una nueva funcionalidad, corregir un bug o refactorizar lógica, debes apegarte estrictamente al ciclo Red-Green-Refactor y estructurar cada test con el patrón AAA.

---

## 1. Ciclo Obligatorio de TDD

Nunca escribas código de producción antes de tener el test correspondiente. Sigue estrictamente este orden:

1. **Fase Roja (RED)**:
   - Diseña primero el caso de prueba mínimo necesario para cubrir el requerimiento o caso de uso.
   - La prueba debe fallar por la razón correcta (o no compilar si la interfaz/función aún no existe).
2. **Fase Verde (GREEN)**:
   - Escribe **únicamente** la cantidad mínima de código de producción necesaria para que la prueba pase.
   - Evita sobreingeniería o implementaciones adelantadas en este paso.
3. **Refactorización (REFACTOR)**:
   - Limpia, optimiza y documenta tanto el código de producción como el de test, asegurándote de que todas las pruebas sigan pasando.

---

## 2. Estructura Obligatoria de los Tests: Patrón AAA

Cada función o caso de test debe estar dividido y etiquetado explícitamente mediante comentarios en tres secciones separadas:

- **Arrange (Preparar)**: Inicializa variables, dependencias, mocks, fixtures y el estado previo necesario.
- **Act (Actuar)**: Ejecuta de manera clara y aislada el método o función bajo prueba.
- **Assert (Afirmar)**: Valida los resultados esperados, verificando valores devueltos, estados alterados o llamadas a dependencias.

---

## 3. Convenciones por Lenguaje

Ajusta la sintaxis y aserciones al ecosistema activo:

- **Go (`testing`)**:
  - Utiliza tests basados en tablas (`table-driven tests`) cuando existan múltiples casos borde, o funciones individuales `Test<NombreFuncion>_<Escenario>_<ResultadoEsperado>`.
  - Separa visualmente las secciones:
    ```go
    func TestCalculateTotal_WithDiscount_ReturnsCorrectPrice(t *testing.T) {
        // Arrange
        cart := NewCart()
        discount := 0.15

        // Act
        total, err := cart.CalculateTotal(discount)

        // Assert
        require.NoError(t, err)
        assert.Equal(t, 85.0, total)
    }
    ```

- **Python (`pytest` / `unittest`)**:
  - Convención de nombres: `test_should_<resultado>_when_<condicion>()`.
  - Estructura limpia y aserciones nativas con `assert`:
    ```python
    def test_should_apply_discount_when_valid_coupon_provided():
        # Arrange
        cart = Cart(base_price=100.0)
        coupon = "DESCUENTO15"

        # Act
        result = cart.apply_coupon(coupon)

        # Assert
        assert result.total == 85.0
        assert result.is_discounted is True
    ```

- **Dart / Flutter (`test` / `flutter_test`)**:
  - Emplea bloques claros de test o testWidgets:
    ```dart
    test('should return discounted price when coupon is valid', () {
      // Arrange
      final cart = Cart(basePrice: 100.0);
      const coupon = 'DESCUENTO15';

      // Act
      final total = cart.applyCoupon(coupon);

      // Assert
      expect(total, equals(85.0));
    });
    ```

---

## 4. Reglas de Interacción
- Al recibir una solicitud, presenta primero el código del test en **Fase Roja** y explica qué valida.
- A continuación, muestra el código de producción que lo pone en **Fase Verde**.
- No mezcles múltiples casos en una sola prueba; mantén cada test enfocado en un único comportamiento.
