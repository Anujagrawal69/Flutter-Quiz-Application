import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.switchScreen});

  final void Function(String screen) switchScreen;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'RESULT',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                  color: const Color.fromARGB(255, 232, 124, 230),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            QuestionSummary(summaryData),
            const SizedBox(height: 40),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 119, 50, 142),
                elevation: 1,
                shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                switchScreen('question-screen');
              },
              icon: const Icon(
                Icons.replay,
                color: Colors.white,
              ),
              label: Text(
                'Restart Quiz',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 119, 50, 142),
                elevation: 1,
                shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                switchScreen('start-screen');
              },
              icon: const Icon(
                Icons.replay,
                color: Colors.white,
              ),
              label: Text(
                'Home',
                textAlign: TextAlign.center,
                style: GoogleFonts.josefinSans(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
