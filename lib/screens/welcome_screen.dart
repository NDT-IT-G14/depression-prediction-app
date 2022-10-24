// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../constants.dart';
import 'splash/splash_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = "/welcome_screen";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          Text(
            "Welcome to our app",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(SplashScreen.routeName);
                },
                child: Text("Get Started"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
