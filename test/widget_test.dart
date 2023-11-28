// Файл для виджет-тестов.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/main.dart';

void main() {
  // Тестирование виджета MyApp.
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Сборка и отображение виджета MyApp.
    await tester.pumpWidget(MyApp());

    // Проверка, что текст 'Hello, Test!' присутствует на экране.
    expect(find.text('Hello, Test!'), findsOneWidget);
  });
}
