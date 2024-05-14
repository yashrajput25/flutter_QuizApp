// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    // it gives info about the results//
    // ignore: non_constant_identifier_names
    final List<Map<String, Object>> Summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      Summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return Summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!",
                style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 222, 160, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(
              height: 35,
            ),
            QuestionsSummary(summaryData),
            SizedBox(
              height: 20,
            ),
            TextButton.icon(
                onPressed: onRestart,
                icon: Icon(
                  Icons.restart_alt,
                  color: Colors.white,
                ),
                label: Text(
                  "Restart Quiz",
                  style: GoogleFonts.lato(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
