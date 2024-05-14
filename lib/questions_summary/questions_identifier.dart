import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsIdentifier extends StatelessWidget {
  const QuestionsIdentifier(
      {super.key, required this.questionIndex, required this.isCorrectAnswer});
  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(context) {
    final questionNumber = questionIndex + 1;
    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: isCorrectAnswer ? Colors.blue : Colors.red,
            borderRadius: BorderRadius.circular(100)),
        child: Text(
          questionNumber.toString(),
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }
}
