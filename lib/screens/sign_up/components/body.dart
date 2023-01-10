// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, must_be_immutable

import 'package:depression_prediction_app/components/login_option.dart';
import 'package:depression_prediction_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../constants.dart';
import '../../home/home_screen.dart';
import 'or_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatelessWidget {
  String email = '';
  String password = '';
  String confirm_password = '';

  Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
            validator: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Password",
            onChanged: (value) {
              password = value;
            },
            validator: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Confirm Password",
            onChanged: (value) {
              confirm_password = value;
            },
            //confirm password validation
            validator: (value) {},
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
          SizedBox(
            height: 10,
          ),
          LoginOption(),
        ],
      ),
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

// String validateEmail(String value) {
//   Pattern pattern =
//       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
//   RegExp regex = new RegExp(pattern);
//   if (!regex.hasMatch(value))
//     return 'Enter a valid email';
//   else
//     return null;
// }

