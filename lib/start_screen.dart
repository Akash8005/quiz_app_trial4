import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 170, 162, 89),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter the Fun Way !",
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 214, 198, 119)),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: switchScreen,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
