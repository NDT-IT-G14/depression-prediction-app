import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "splash/splash_screen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("splash"),
      ),
      body: Text("SplashScreen"),
    );
  }
}
