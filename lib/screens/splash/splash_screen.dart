// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/body.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/splash_screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
