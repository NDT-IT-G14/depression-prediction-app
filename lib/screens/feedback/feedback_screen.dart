import 'package:flutter/material.dart';

import 'components/body.dart';

class FeedbackScreen extends StatelessWidget {
  static const routeName = "/feedback_screen";
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
