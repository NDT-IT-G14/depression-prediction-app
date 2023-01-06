import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton(
      {super.key,  required this.nextBtn, required this.onPressed});
  final VoidCallback onPressed;
  final String nextBtn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
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
