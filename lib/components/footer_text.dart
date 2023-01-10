import 'package:flutter/material.dart';

class FooterText {
  static FotterMessage() {
    return Container(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(color: Colors.black, fontSize: 15),
          children: [
            TextSpan(
              text: 'By continue to login, you accept our company’s ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Term & conditions ',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: 'and ',
            ),
            TextSpan(
              text: 'Privacy policies',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
