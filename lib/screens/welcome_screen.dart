import 'package:depression_prediction_app/constants.dart';
import 'package:flutter/material.dart';

import 'splash/splash_screen.dart';

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
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: kPrimaryColor),
            onPressed: () {
              Navigator.of(context).pushNamed(SplashScreen.routeName);
            },
            child: Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
