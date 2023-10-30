import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/widgets/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class Questions extends StatefulWidget {
  const Questions(this.onChooseAnswers, {super.key});

  final void Function(String) onChooseAnswers;

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var currentQuestionsIndex = 0;

  void changeQuestion(String answer) {
    widget.onChooseAnswers(answer);
    setState(() {
      currentQuestionsIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[currentQuestionsIndex];
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestions.question,
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
            ...currentQuestions.getShuffledAnswers().map((e) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: AnswerButton(
                  text: e,
                  onPressed: () => changeQuestion(e),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
