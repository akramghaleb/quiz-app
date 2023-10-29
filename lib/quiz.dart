import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/questions_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = HomePage(changeScreen);
  }

  void changeScreen() {
    setState(() {
      activeScreen = const Questions();
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
