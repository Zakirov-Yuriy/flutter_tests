import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_tests/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('E2E test', (WidgetTester tester) async {
    app.main();

    await tester.pumpAndSettle();

    // Файл E2E тест начинаются здесь.

    expect(find.text('Hello, Test!'), findsOneWidget);

    final buttonFinder = find.text('My Button');
    expect(buttonFinder, findsOneWidget);
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    expect(find.text('My Button'), findsOneWidget);

    // Завершите тест.s
  });
}
