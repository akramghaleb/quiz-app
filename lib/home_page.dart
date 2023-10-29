import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.changeScreen, {super.key});

  Function changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: Colors.white.withOpacity(0.4),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Learn Flutter',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton.icon(
              onPressed: () => changeScreen(),
              icon: const Icon(Icons.arrow_right, color: Colors.white),
              label: const Text(
                'Start now !',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
