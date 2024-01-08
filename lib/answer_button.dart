import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});

  final String answerText;

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple.shade700,
          foregroundColor: Colors.white,padding: EdgeInsets.only(left: 20,right: 20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(answerText,textAlign: TextAlign.center,),
      ),
    );
  }
}
