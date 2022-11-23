// ignore_for_file: prefer_const_constructors

import 'package:depression_prediction_app/screens/home/home_screen.dart';
import 'package:depression_prediction_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../components/social_icon.dart';
import '../../../constants.dart';
import 'or_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatelessWidget {
  String email = '';
  String password = '';
  String confirm_password = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Hello!",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: kPrimaryColor),
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
        RoundedPasswordField(
          hintText: "Confirm Password",
          onChanged: (value) {
            confirm_password = value;
          },
        ),
        SizedBox(height: 10),
        RoundedButton(
            text: "SIGNUP",
            press: () async {
              if (password == confirm_password) {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email, password: password);
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              } else {
                print('$password and $confirm_password does not match');
              }
            }
            // press: () {
            //   Navigator.of(context).pushNamed(SignInScreen.routeName);
            // },
            ),
        SizedBox(height: 10),
        AlreadyHaveAnAccountCheck(
          login: false,
          press: () {
            print('fire');
            // Navigator.of(context).pushNamed(SignInScreen.routeName);
          },
        ),
        OrDivider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocalIcon(
              iconSrc: "assets/icons/Icon awesome-google.svg",
              press: () {},
            ),
            SocalIcon(
              iconSrc: "assets/icons/Icon awesome-facebook-f.svg",
              press: () {},
            ),
            SocalIcon(
              iconSrc: "assets/icons/Icon awesome-apple.svg",
              press: () {},
            ),
          ],
        )
      ],
    );
  }

  Future SignUP() async {
    print('fire on...');
    if (password == confirm_password) {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      print('signup');
    } else {
      print('$password and $confirm_password does not match');
    }
  }
}
