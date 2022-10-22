import 'package:depression_prediction_app/constants.dart';
import 'package:depression_prediction_app/routes.dart';
import 'package:depression_prediction_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quokka 1.0',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
