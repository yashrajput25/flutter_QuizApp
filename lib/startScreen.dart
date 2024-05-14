// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      //helps in covering as much area vertically and physically, expanding
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quizimage.webp', width: 300),
          SizedBox(
            height: 30,
          ),
          Text(
            "Let's Learn Flutter!",
            style: GoogleFonts.lato(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.all(10), foregroundColor: Colors.white),
              icon: const Icon(Icons.arrow_right),
              label: const Text("Start Quiz"))
        ],
      ),
    );
  }
}
