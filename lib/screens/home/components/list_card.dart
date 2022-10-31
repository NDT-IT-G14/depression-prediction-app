import 'package:flutter/material.dart';

import '../../../constants.dart';

class ListCard extends StatelessWidget {
  final String text;
  final String subtext;
  final Function press;
  const ListCard({
    Key? key,
    required this.text,
    required this.subtext,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 200,
          width: 150,
          child: Stack(
            children: [
              Positioned(
                top: 20,
                bottom: 20,
                left: 0,
                right: 0,
                child: Container(
                  height: 150,
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
                      child: InkWell(
                        onTap: press(),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: kPrimaryColor),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: "$text\n",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              TextSpan(
                                text: subtext,
                                style: TextStyle(color: kTextColor),
                              ),
                            ],
                          ),
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
