import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, Colors.purple])),
            child: const HomePage()),
      ),
    );
  }
}
