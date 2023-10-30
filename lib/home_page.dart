import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(
            'Learn Flutter',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
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
