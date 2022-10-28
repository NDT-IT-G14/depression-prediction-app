// ignore_for_file: prefer_const_constructors

import 'package:depression_prediction_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: double.infinity,
            height: 120,
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
          Container(
            height: 245,
            width: 202,
            child: Stack(children: [
              Container(
                height: 221,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                      ),
                    ]),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
