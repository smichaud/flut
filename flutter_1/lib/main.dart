import 'package:flutter/material.dart';

import './question.dart';
import 'answer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  static const questions = [
    {
      'questionText': 'Who is the best programmer?',
      'answers': [
        "Kent C Dodds",
        "John Carmack",
        "Seb",
      ]
    },
    {
      'questionText': 'What is the best programming language?',
      'answers': [
        "Dart",
        "Python",
        "TypeScript",
        "Rust",
        "C++",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Flutter stuff")),
      body: Column(
        children: [
          Question((questions[_questionIndex]['questionText']) as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) =>
                  Answer(selectHandler: _answerQuestion, answerText: answer))
              .toList(),
        ],
      ),
    ));
  }
}
