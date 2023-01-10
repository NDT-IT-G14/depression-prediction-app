// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:depression_prediction_app/screens/sign_up/sign_up_screen.dart';
import 'package:depression_prediction_app/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../components/already_have_an_account_check.dart';
import '../../../components/login_option.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../constants.dart';
import '../../../shared.dart';
import '../../home/home_screen.dart';
import '../../sign_up/components/or_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../trouble_login/trouble_login.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  // final const Body({Key? key}) : super(key: key);
  String email = '';
  String password = '';

  var islogin;

  final _email = TextEditingController();
  final _password = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool isLoading = false;

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "* Required";
    } else if (value.length < 6) {
      return "Password should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Password should not be greater than 15 characters";
    } else
      return null;
  }

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
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 150),
      child: Form(
        autovalidateMode: null, //check for validation while typing
        key: formkey,
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
              "Sign in your Account",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            // RoundedInputField(
            //   hintText: "Your Email",
            //   onChanged: (value) {
            //     email = value;
            //   },
            //   validator: (value) {},
            // ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: TextFormField(
                controller: _email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29)),
                    labelText: 'Email',
                    hintText: 'Enter valid email'),
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                  EmailValidator(errorText: "Enter valid email"),
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: _password,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29)),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
                validator: MultiValidator([
                  RequiredValidator(errorText: "* Required"),
                  MinLengthValidator(6,
                      errorText: "Password should be at least 6 characters"),
                  MaxLengthValidator(15,
                      errorText:
                          "Password should not be greater than 15 characters")
                ]),
                //validatePassword,        //Function to check validation
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(TroubleLogin.routeName);
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: kPrimaryColor, fontSize: 15),
              ),
            ),
            RoundedButton(
              text: "SIGN IN",
              press: () async {
                if (formkey.currentState!.validate()) {
                  try {
                    setState(() {
                      isLoading = true;
                    });
                    UserCredential userCredential =
                        await _auth.signInWithEmailAndPassword(
                      email: _email.text,
                      password: _password.text,
                    );
                    if (userCredential.user != null &&
                        userCredential.user!.email != null) {
                      final SharedPreferences prefs = await _prefs;
                      prefs.setBool("isLogin", true);
                      if (userCredential.user!.email!.isNotEmpty) {
                        prefs.setString("email", userCredential.user!.email!);
                      }

                      // ignore: use_build_context_synchronously
                      Navigator.of(context).pushNamed(HomeScreen.routeName);
                      print("Validated");
                    }
                    setState(() {
                      isLoading = false;
                    });
                  } catch (e) {
                    print(e);
                    await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            actions: [
                              MaterialButton(
                                  onPressed: () async {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Cancel')),
                            ],
                            content: Text("Invalid user credintials"),
                          );
                        });
                    setState(() {
                      isLoading = false;
                    });
                  }
                } else {
                  print("Not Validated");
                }
              },
            ),
            SizedBox(height: 10),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                // Navigator.of(context).pushNamed(SignUpScreen.routeName);
              },
            ),
            OrDivider(),
            SizedBox(
              height: 10,
            ),
            LoginOption(),
          ],
        ),
      ),
    );
  }
}
