import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 45, 0, 118),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40))),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
        child: Text(
          answerText,
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }
}
