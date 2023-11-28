// Файл для юнит-тестов.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/main.dart';

void main() {
  // Тестирование метода add класса Calculator.
  test('Calculator add method', () {
    Calculator calculator = Calculator();

    // Проверка, что результат метода add равен ожидаемому значению.
    expect(calculator.add(2, 3), equals(5));
  });
}
