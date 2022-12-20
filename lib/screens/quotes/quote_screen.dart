import 'package:depression_prediction_app/screens/feedback/components/body.dart';
import 'package:flutter/material.dart';

class QuotesScreen extends StatelessWidget {
  static const routeName = "/quiz_screen";
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
