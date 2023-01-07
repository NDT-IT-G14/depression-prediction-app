// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:depression_prediction_app/screens/home/home_screen.dart';
import 'package:depression_prediction_app/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/login_option.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../components/social_icon.dart';
import '../../../constants.dart';
import '../../sign_up/components/or_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatelessWidget {
  // final const Body({Key? key}) : super(key: key);

  String email = '';
  String password = '';

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello!",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: kPrimaryColor),
          ),
          SizedBox(height: size.height * 0.03),
          Text(
            "Create New Account",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {
              email = value;
            },
          ),
          RoundedPasswordField(
            hintText: "Password",
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(height: 10),
          RoundedButton(
            text: "SIGN IN",
            press: () {
              Navigator.of(context).pushNamed(NavBar.routeName);
            },
            // press: () async {
            //   try {
            //     await FirebaseAuth.instance.signInWithEmailAndPassword(
            //         email: email, password: password);
            //     Navigator.of(context).pushNamed(HomeScreen.routeName);
            //   } catch (e) {
            //     print(e.toString());
            //   }
            // },
          ),
          SizedBox(height: 10),
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {},
          ),
          OrDivider(),
          SizedBox(
            height: 10,
          ),
          LoginOption(),
        ],
      ),
    );
  }

  Future SignIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }
}
