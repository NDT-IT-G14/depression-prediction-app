import 'package:depression_prediction_app/screens/feedback/feedback_screen.dart';
import 'package:depression_prediction_app/screens/home/home_screen.dart';
import 'package:depression_prediction_app/screens/music/music_screen.dart';
import 'package:depression_prediction_app/screens/sign_in/sign_in_screen.dart';
import 'package:depression_prediction_app/screens/sign_up/sign_up_screen.dart';
import 'package:depression_prediction_app/screens/splash/splash_screen.dart';
import 'package:depression_prediction_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (_) => const WelcomeScreen(),
  SplashScreen.routeName: (_) => const SplashScreen(),
  SignUpScreen.routeName: (_) => const SignUpScreen(),
  SignInScreen.routeName: (_) => const SignInScreen(),
  HomeScreen.routeName: (_) => const HomeScreen(),
  MusicScreen.routeName: (_) => const MusicScreen(),
  FeedbackScreen.routeName: (_) => const FeedbackScreen(),
};
