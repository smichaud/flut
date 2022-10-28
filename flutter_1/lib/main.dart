import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
    if (_questionIndex < _questions.length) {
      print("Still more question");
    }
  }

  final _questions = const [
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
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex,
            )
          : const Result(),
    ));
  }
}
