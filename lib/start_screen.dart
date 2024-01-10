import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset('assets/images/quiz-logo.png', width: 300, color: const Color.fromARGB(116, 250, 249, 248),),
          // Opacity(
          //     opacity: 0.2,
          //     child: Image.asset('assets/images/quiz-logo.png', width: 300)),
          const SizedBox(height: 80),
           Text('Learn Flutter the fun way!',
              style: GoogleFonts.lato(fontSize: 24, color: const Color.fromARGB(255, 200, 208, 255))),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
