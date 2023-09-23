import 'package:flutter/cupertino.dart';

class Level {
  final int id;
  final String name;
  final int gain;
  final int difficult;
  final List<Quiz> quizzes;
  final int duration;

  const Level({
    required this.id,
    required this.name,
    required this.gain,
    required this.difficult,
    required this.quizzes,
    required this.duration,
  });
}

class Quiz {
  final int id;
  final String question;
  final List<Answer> answers;

  const Quiz({
    required this.id,
    required this.question,
    required this.answers,
  });
}

class Answer {
  final String answer;
  final bool isCorrect;

  const Answer({
    required this.answer,
    this.isCorrect = false,
  });
}
