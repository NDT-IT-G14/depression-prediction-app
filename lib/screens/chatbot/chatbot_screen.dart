import 'package:flutter/material.dart';

import 'body.dart';

class ChatBotScreen extends StatelessWidget {
  static const routeName = "/chatbot_screen";
  const ChatBotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const body();
  }
}
