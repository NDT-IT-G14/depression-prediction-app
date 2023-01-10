//  ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:depression_prediction_app/constants.dart';
import 'package:depression_prediction_app/routes.dart';
import 'package:depression_prediction_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screens/music/music_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // We're using the manual installation on non-web platforms since Google sign in plugin doesn't yet support Dart initialization.
  // See related issue: https://github.com/flutter/flutter/issues/96391
  // ignore: dead_code

  if (false) {
    await Firebase.initializeApp();
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyD1To6MJRV4oJjj6j5M02h89PC_6rV3rbI",
          authDomain: "quakka-1-1.firebaseapp.com",
          projectId: "quakka-1-1",
          storageBucket: "quakka-1-1.appspot.com",
          messagingSenderId: "291233092534",
          appId: "1:291233092534:web:f36f5b0267891ce8f7e717"),
    );
  }

  // if (shouldUseFirebaseEmulator) {
  //   await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
  // }

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
        primarySwatch: Colors.teal,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      // home: CommentScreen(),
      initialRoute: WelcomeScreen.routeName,
      routes: routes,
    );
  }
}
