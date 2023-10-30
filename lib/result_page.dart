import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<Map<String, Object>> getResults() {
    final List<Map<String, Object>> results = [];

    var i = 0;
    for (i = 0; i < widget.chosenAnswers.length; i++) {
      results.add({
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'index': i,
        'answer': widget.chosenAnswers[i],
      });
    }

    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your answers 3 out of 6 correct answers',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            ...getResults().map(
              (e) => Column(
                children: [
                  Text(
                    e['index'].toString(),
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    e['question'].toString(),
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    e['correct_answer'].toString(),
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    e['answer'].toString(),
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnswerButton(
              text: 'Return to main screen',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
