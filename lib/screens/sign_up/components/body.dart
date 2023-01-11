// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names, must_be_immutable, prefer_is_not_empty, use_build_context_synchronously

import 'package:depression_prediction_app/components/login_option.dart';
import 'package:depression_prediction_app/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/rounded_button.dart';
import '../../../constants.dart';
import 'or_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String email = '';

  String password = '';

  String confirm_password = '';
  bool showSnipper = false;
  bool isLoading = false;

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: kPrimaryColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(29)),
                  labelText: 'Email address',
                  hintText: 'Enter valid email'),
              validator: (value) {
                if (!(value!.isEmpty) &&
                    !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                        .hasMatch(value)) {
                  return "Enter a valid email address";
                }
                return null;
              },
              onChanged: (value) {
                email = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(29)),
                  labelText: 'Password',
                  hintText: 'Enter valid password'),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your password";
                }
                return null;
              },
              onChanged: (value) {
                password = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: kPrimaryColor,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(29)),
                  labelText: 'Confirm Password',
                  hintText: 'Enter password again'),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter password again";
                }
                return null;
              },
              onChanged: (value) {
                confirm_password = value;
              },
            ),
          ),
          SizedBox(height: 10),
          RoundedButton(
              text: "SIGNUP",
              press: () async {
                if (password == confirm_password) {
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: email, password: password);
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => NavBar()),
                      (Route<dynamic> route) => false);
                } else {
                  print('$password and $confirm_password does not match');
                }
              }
              // press: () async {
              //   setState(() {
              //     showSnipper = true;
              //   });

              //   try {
              //     setState(() {
              //       isLoading = true;
              //     });
              //     if (password == confirm_password) {
              //       await FirebaseAuth.instance.createUserWithEmailAndPassword(
              //           email: email, password: password);

              //       Navigator.of(context).pushAndRemoveUntil(
              //           MaterialPageRoute(builder: (context) => SignInScreen()),
              //           (Route<dynamic> route) => false);
              //     }
              //     setState(() {
              //       isLoading = false;
              //     });
              //   } catch (e) {
              //     print(e);
              //     setState(() {
              //       isLoading = false;
              //     });
              //   }
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
