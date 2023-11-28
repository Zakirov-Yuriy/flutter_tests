// Файл для интеграционных тестов.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/main.dart';

void main() {
  // Тестирование интеграции между MyApp и MyHomePage
  testWidgets('Integration test', (WidgetTester tester) async {
    // Сборка и отображение виджета MyApp
    await tester.pumpWidget(MyApp());

    // Проверка, что виджет MyHomePage присутствует в MyApp
    expect(find.byType(MyHomePage), findsOneWidget);

    // Проверка взаимодействия между MyApp и MyHomePage
    expect(find.text('Test App'), findsOneWidget);
  });
}
