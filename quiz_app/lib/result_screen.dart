import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_bank.dart';
import "package:quiz_app/question_summary.dart";

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chooseAnswer, required this.resetQuiz});
  final List<String> chooseAnswer;
  final void Function()? resetQuiz;

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> summary = [];
    for (var i = 0; i < questions.length; i++) {
      var data = {
        "question_index": i,
        "question": questions[i].question,
        "correct_answer": questions[i].answers[0],
        "user_answer": chooseAnswer[i]
      };
      summary.add(data);
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final totalCorrectAnswer = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    final totalQuestion = questions.length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $totalCorrectAnswer out of $totalQuestion number of question correctly!",
              style: const TextStyle(
                  color: Color.fromARGB(216, 212, 212, 212),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData: getSummary()),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: resetQuiz,
              icon: const Icon(Icons.restart_alt),
              label: const Text("Restart"),
            )
          ],
        ),
      ),
    );
  }
  //
}
