import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton(
      {super.key, required this.nextQuestion, required this.nextBtn});
  final VoidCallback nextQuestion;
  final String nextBtn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(10.0)),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        width: double.infinity,
        child: Text(
          nextBtn,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
