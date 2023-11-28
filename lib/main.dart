import 'package:flutter/material.dart';

// Для файла виджет-тестов
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello, Test!'),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Действие, которое происходит при нажатии кнопки
                print('Button Pressed!');
              },
              child: Text('My Button'),
            ),
          ],
        ),
      ),
    );
  }
}

// Для файла Unit-тест модульный тест.
class Calculator {
  int add(int a, int b) {
    return a + b;
  }
}
