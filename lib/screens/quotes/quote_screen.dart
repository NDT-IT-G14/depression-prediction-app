import 'package:flutter/material.dart';

import 'components/body.dart';

class QuotesScreen extends StatelessWidget {
  static const routeName = "/quotes_screen";
  const QuotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
