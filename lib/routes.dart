import 'package:depression_prediction_app/screens/splash/splash_screen.dart';
import 'package:depression_prediction_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (_) => WelcomeScreen(),
  SplashScreen.routeName: (_) => SplashScreen(),
};