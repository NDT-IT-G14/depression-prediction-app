import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 0,
            width: double.infinity,
          ),
          Text(
            "quokka",
            style: TextStyle(fontSize: 36),
          ),
          Text(
            "Welcome to our app",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
