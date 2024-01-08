import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary.dart';

import 'data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswer,
  });

  final List<String> chosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numToatalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      },
    ).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Text(
                "You answered $numCorrectQuestions out of $numToatalQuestions questions correctly!",
              ),
              SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData: summaryData),
              //    Text("List of answers and questions..."),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text('Restart Quiz'))
            ],
          )),
    );
  }
}
