// ignore_for_file: prefer_const_constructors

import 'package:depression_prediction_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../components/social_icon.dart';
import '../../../constants.dart';
import '../../sign_up/components/or_divider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
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
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          hintText: "Password",
          onChanged: (value) {},
        ),
        SizedBox(height: 10),
        RoundedButton(
          text: "SIGN IN",
          press: () {
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          },
        ),
        SizedBox(height: 10),
        AlreadyHaveAnAccountCheck(
          login: true,
          press: () {},
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
}
