// Файл файл для модульного теста.

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/main.dart';

void main() {
  testWidgets('Performance Test', (WidgetTester tester) async {
    try {
      await tester.pumpWidget(MyApp());

      final Stopwatch stopwatch = Stopwatch()..start();

      for (int i = 0; i < 1000; i++) {
        await tester.pump();
      }

      stopwatch.stop();

      print('Performance Test Duration: ${stopwatch.elapsedMilliseconds}ms');

      // Выводим количество кадров в секунду FPS.
      final framesPerSecond = 1000 / stopwatch.elapsedMilliseconds;
      print('Frames Per Second: $framesPerSecond');

      // Проверяем, что время выполнения не превышает определенного порога.
      // Порог производительности (100).
      expect(stopwatch.elapsedMilliseconds, lessThan(100));
    } catch (e, stackTrace) {
      print('Error in performance test: $e');
      print(stackTrace);
      rethrow; // Пересылаем ошибку, чтобы тест был отмечен как неудачный.
    }
  });
}
