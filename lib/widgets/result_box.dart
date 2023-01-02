import 'package:flutter/material.dart';

import '../constants.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {super.key, required this.onPressed, required this.condition});
  final VoidCallback onPressed;
  final String condition;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              'Your Condition:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10.0),
            Text(
              condition,
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: onPressed,
              child: const Text(
                'Start Over',
                style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
