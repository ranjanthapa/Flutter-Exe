import 'package:flutter/material.dart';
import "package:quiz_app/home.dart";
import "package:quiz_app/question_screen.dart";
import "package:quiz_app/data/question_bank.dart";
import "package:quiz_app/result_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  final List<String> selectedAnswer = [];

  @override
  void initState() {
    activeScreen = Home(switchScreen);
    super.initState();
  }

  void switchScreen() {
    selectedAnswer.clear();
    setState(() {
      activeScreen = QuestionScreen(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    setState(() {
      if (selectedAnswer.length == questions.length) {
        activeScreen = ResultScreen(
          chooseAnswer: selectedAnswer,
          resetQuiz: switchScreen,
        );
      }
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.deepPurpleAccent],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
