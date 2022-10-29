// ignore_for_file: prefer_const_constructors

import 'package:depression_prediction_app/constants.dart';
import 'package:flutter/material.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 20),
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
          ListCard(
            text: 'Music',
            subtext: "Enjoy your life",
          ),
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  final String text;
  final String subtext;
  const ListCard({
    Key? key,
    required this.text,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 170,
          width: 170,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 110,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: kPrimaryColor),
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            TextSpan(
                              text: "$text\n",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            TextSpan(
                              text: subtext,
                              style: TextStyle(color: kTextColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
