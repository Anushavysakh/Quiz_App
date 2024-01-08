import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.start,
          children: summary_item().toList(),
        ),
      ),
    );
  }

  Iterable<Row> summary_item() {
    return summaryData.map((data) {
          return Row(
            children: [
              Text(((data['question_index'] as int) + 1).toString()),
              SizedBox(width: 10,),
              Expanded(
                child: Column(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data['question'].toString(),style: TextStyle(color: Colors.white),),
                   const  SizedBox(
                      height: 5,
                    ),
                    Text(data['correct_answer'].toString(),style: TextStyle(color: Colors.white)),
                   const  SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'].toString()),
                  ],
                ),
              )
            ],
          );
        });
  }
}
