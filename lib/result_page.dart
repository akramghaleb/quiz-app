import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/summary.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int correct = 0;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.chosenAnswers.length; i++) {
      if (questions[i].answers[0] == widget.chosenAnswers[i]) {
        setState(() {
          correct += 1;
        });
      }
    }
  }

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
              'Your answers $correct out of 6 correct answers',
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
            Summary(getResults()),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon:
                    const Icon(Icons.restart_alt_outlined, color: Colors.white),
                label: const Text(
                  'Return to main screen',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
