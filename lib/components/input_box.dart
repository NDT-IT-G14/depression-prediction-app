import 'package:flutter/material.dart';

class InputBox {
  static UserInput(bool show) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TextField(
        obscureText: show,
        decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
