// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:depression_prediction_app/constants.dart';
import 'package:depression_prediction_app/screens/feedback/feedback_screen.dart';
import 'package:depression_prediction_app/screens/profile/profile_screen.dart';
import 'package:depression_prediction_app/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import '../../quotes/quote_screen.dart';
import 'list_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 240,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: const [
                  kPrimaryColor,
                  kSecondaryColor,
                ],
              ),
              // image: const DecorationImage(
              //   image: AssetImage("assets/images.png"),
              //   fit: BoxFit.fitWidth,
              // ),
            ),
            child: SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Check Your Mental Health\nWithout Going Anyware",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(QuizScreen.routeName);
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: kShadowColor),
                            ),
                          ),
                        ),
                        child: const Text('Start quiz'),
                      ),
                    ],
                  ),
                  // Image(
                  //   image: AssetImage(
                  //     "",
                  //   ),
                  //   fit: BoxFit.fitHeight,
                  //   alignment: Alignment.bottomRight,
                  // ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Card(context),
          // BottomNavBar(),
        ],
      ),
    );
  }

  Column Card(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListCard(
              text: 'Profile',
              subtext: "Sea your profile",
              press: () {
                Navigator.of(context).pushNamed(ProfileScreen.routeName);
              },
            ),
            ListCard(
              text: 'Quotes',
              subtext: "Fulfill your life",
              press: () {
                Navigator.of(context).pushNamed(QuotesScreen.routeName);
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListCard(
              text: 'Emergancy',
              subtext: "Enjoy your life",
              press: () {
                // Navigator.of(context).pushNamed(.routeName);
              },
            ),
            ListCard(
              text: 'Feedbacks',
              subtext: "Fulfill your life",
              press: () {
                Navigator.of(context).pushNamed(FeedbackScreen.routeName);
              },
            ),
          ],
        ),
      ],
    );
  }
}
