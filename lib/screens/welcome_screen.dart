// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'onbording/onbording_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const routeName = "/welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(OnbordingScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: 0,
            width: double.infinity,
          ),
          Image(
            image: AssetImage("assets/images/logo.png"),
            width: 200,
          ),
          Text(
            "quokka",
            style: TextStyle(fontSize: 36),
          ),
          SizedBox(height: 10),
          Text(
            "Welcome to our app",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
