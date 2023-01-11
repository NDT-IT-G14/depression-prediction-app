// ignore_for_file: library_private_types_in_public_api

import 'package:depression_prediction_app/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../components/footer_text.dart';
import '../sign_in/sign_in_screen.dart';

class TroubleLogin extends StatefulWidget {
  static const routeName = "/trouble_login";
  const TroubleLogin({Key? key}) : super(key: key);

  @override
  _TroubleLoginState createState() => _TroubleLoginState();
}

class _TroubleLoginState extends State<TroubleLogin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: size.width / 15,
                right: size.width / 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width,
                    child: const Text(
                      "Reset Password",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(29)),
                        labelText: 'Enter your Email',
                        hintText: 'Enter valid email'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      EmailValidator(errorText: "Enter valid email"),
                    ]),
                  ),
                  SizedBox(
                    height: size.height / 70,
                  ),
                  SizedBox(
                    width: size.width,
                    child: RoundedButton(
                      text: "Send Reset Code",
                      press: () {
                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  FooterText.FotterMessage()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
