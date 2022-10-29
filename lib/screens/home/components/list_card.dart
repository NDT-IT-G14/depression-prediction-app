import 'package:flutter/material.dart';

import '../../../constants.dart';

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
          height: 220,
          width: 170,
          child: Stack(
            children: [
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Container(
                  height: 170,
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
