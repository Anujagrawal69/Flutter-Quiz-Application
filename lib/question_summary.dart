import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 350,
      decoration: BoxDecoration(
        border: Border.all(
            color: const Color.fromARGB(99, 218, 87, 238), width: 0.5),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 14,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.josefinSans(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question']).toString(),
                          style: GoogleFonts.josefinSans(
                              color: const Color.fromARGB(222, 255, 255, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              Text(
                                'You: ',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.josefinSans(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                (data['user_answer']).toString(),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.josefinSans(
                                    color: const Color.fromARGB(
                                        255, 196, 192, 192),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                'Correct: ',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.josefinSans(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                (data['correct_answer']).toString(),
                                textAlign: TextAlign.center,
                                style: GoogleFonts.josefinSans(
                                    color:
                                        const Color.fromARGB(195, 1, 249, 79),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                      ]),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
