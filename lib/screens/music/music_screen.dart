import 'package:flutter/material.dart';

import 'components/body.dart';

class MusicScreen extends StatelessWidget {
  static const routeName = "/music_screen";
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
