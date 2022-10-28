import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {super.key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question((questions[questionIndex]['questionText']) as String),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) =>
                Answer(selectHandler: answerQuestion, answerText: answer))
            .toList(),
      ],
    );
  }
}
