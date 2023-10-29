import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          AnswerButton(
            text: 'Answer 1',
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          AnswerButton(
            text: 'Answer 2',
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          AnswerButton(
            text: 'Answer 3',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
