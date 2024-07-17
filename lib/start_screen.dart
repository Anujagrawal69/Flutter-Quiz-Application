import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function(String value) startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/question-mark.png',
                width: 50,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
              Image.asset(
                'assets/images/question-mark.png',
                width: 50,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
              Image.asset(
                'assets/images/question-mark.png',
                width: 50,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
            ],
          ),
          Image.asset(
            'assets/images/flutter-logo.png',
            width: 150,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.josefinSans(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz('question-screen');
            },
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 119, 50, 142),
              elevation: 1,
              shape: const ContinuousRectangleBorder(
                  borderRadius: BorderRadius.zero),
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.josefinSans(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 14,
              ),
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
