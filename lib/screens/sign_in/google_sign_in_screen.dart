import 'package:depression_prediction_app/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

import '../../shared.dart';

class GoogleSignIn extends StatefulWidget {
  static const routeName = "/google_sign_in_screen";
  const GoogleSignIn({super.key});

  @override
  State<GoogleSignIn> createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {

  var islogin;
 
  checkUserLoginState() async {
    await Shared.getUserSharedPreferences().then((value) {
      setState(() {
        islogin = value;
      });
    });
  }
 
  @override
  void initState() {
    checkUserLoginState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const NavBar();
  }
}