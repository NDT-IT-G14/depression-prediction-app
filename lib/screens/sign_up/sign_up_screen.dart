import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/sign_up_screen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
