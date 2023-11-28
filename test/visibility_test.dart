// Файл для тестов видимости.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/main.dart';

void main() {
  // Тестирование видимости кнопки в MyHomePage.
  testWidgets('Visibility test', (WidgetTester tester) async {
    // Оборачиваем виджет в MaterialApp
    await tester.pumpWidget(MaterialApp(home: MyHomePage()));

    // Проверка видимости кнопки в MyHomePage.
    expect(find.byType(TextButton), findsOneWidget);
  });
}
