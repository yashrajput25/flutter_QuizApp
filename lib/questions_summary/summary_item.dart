// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      children: [
        QuestionsIdentifier(
            questionIndex: itemData['question_index'] as int,
            isCorrectAnswer: isCorrectAnswer),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemData['question'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  textAlign: TextAlign.left),
              const SizedBox(height: 5),
              Text(itemData['user_answer'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  textAlign: TextAlign.left),
              Text(itemData['correct_answer'] as String,
                  style: GoogleFonts.lato(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  textAlign: TextAlign.left),
            ],
          ),
        )
      ],
    );
  }
}
