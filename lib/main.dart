//  ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'dart:io';

import 'package:depression_prediction_app/constants.dart';
import 'package:depression_prediction_app/routes.dart';
import 'package:depression_prediction_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyD1To6MJRV4oJjj6j5M02h89PC_6rV3rbI",
        authDomain: "quakka-1-1.firebaseapp.com",
        projectId: "quakka-1-1",
        storageBucket: "quakka-1-1.appspot.com",
        messagingSenderId: "291233092534",
        appId: "1:291233092534:web:f36f5b0267891ce8f7e717"),
  );
  runApp(MyApp());
  HttpOverrides.global = MyHttpOverrides();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quokka 1.0',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: WelcomeScreen(),
      routes: routes,
    );
  }
}
