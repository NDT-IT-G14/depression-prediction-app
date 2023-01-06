// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/body.dart';

class OnBordingScreen extends StatelessWidget {
  static const routeName = "/OnBording_screen";
  const OnBordingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
