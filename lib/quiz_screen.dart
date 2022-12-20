import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(children: const [
          Text(
            "Start quiz",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          _questionWidget(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          "Question 1/18",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
