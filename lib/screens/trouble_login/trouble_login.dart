import 'package:depression_prediction_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../components/footer_text.dart';
import '../../components/input_box.dart';
import '../../components/labels.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: size.height / 15),
              child: Image.asset("assets/images/foget.png"),
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width / 15,
                right: size.width / 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width,
                    child:const Text(
                      "Trouble Log In?",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 20,
                  ),
                  Labels.inputlabels("Enter your Email"),
                  InputBox.UserInput(false),
                  SizedBox(
                    height: size.height / 70,
                  ),
                  Container(
                    width: size.width,
                    child: Button.RoseButton(
                        context, "Send Reset Email", HomeScreen()),
                  ),
                  SizedBox(
                    height: size.height / 8,
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
