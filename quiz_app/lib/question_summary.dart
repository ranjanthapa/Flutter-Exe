import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: summaryData.map((data) {
            return Row(children: [
              Container(
                  height: 32,
                  width: 32,
                  margin: const EdgeInsets.only(right: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: data['correct_answer'] == data['user_answer']
                          ? Colors.blue.shade100
                          : const Color.fromARGB(255, 217, 47, 64),
                      shape: BoxShape.circle),
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      data["question"] as String,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                      // textAlign: TextAlign.start,
                    ),
                    Text(
                      data["user_answer"] as String,
                      style: const TextStyle(
                          color: Color.fromARGB(217, 236, 236, 236)),
                      // textAlign: TextAlign.start,
                    ),
                    Text(
                      data["correct_answer"] as String,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255)),
                      // textAlign: TextAlign.start,
                    )
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
