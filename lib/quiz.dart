import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions_page.dart';
import 'dart:developer';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  List<String> chosenAnswers = [];

  @override
  void initState() {
    super.initState();
    activeScreen = HomePage(changeScreen);
  }

  void onChooseAnswers(String answer) {
    chosenAnswers.add(answer);
    if (chosenAnswers.length == questions.length) {
      setState(() {
        activeScreen = HomePage(changeScreen);
      });
      log(chosenAnswers.toString());
      chosenAnswers = [];
    }
  }

  void changeScreen() {
    setState(() {
      activeScreen = Questions(onChooseAnswers);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, Colors.purple])),
            child: activeScreen),
      ),
    );
  }
}
