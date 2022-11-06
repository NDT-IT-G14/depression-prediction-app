// ignore_for_file: prefer_const_constructors

import 'package:depression_prediction_app/constants.dart';
import 'package:depression_prediction_app/screens/feedback/feedback_screen.dart';
import 'package:flutter/material.dart';

import '../../music/music_screen.dart';
import 'list_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: Text.rich(
              TextSpan(
                text: "Start symtoms monitoring",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListCard(
                    text: 'Music',
                    subtext: "Enjoy your life",
                    press: () {
                      Navigator.of(context).pushNamed(MusicScreen.routeName);
                    },
                  ),
                  ListCard(
                    text: 'Quotes',
                    subtext: "Fulfill your life",
                    press: () {
                      // Navigator.of(context).pushNamed(FeedbackScreen.routeName);
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
          ),
        ],
      ),
    );
  }
}
