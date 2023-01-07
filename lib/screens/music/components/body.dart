import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../constants.dart';
import '../../../widgets/search_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kRedLightColor,
              image: DecorationImage(
                image: AssetImage("assets/images/music.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const Text(
                      "Meditation Music",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "You will always be getting praise and blame, but do not let either affect the poise of the mind.",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBar(),
                    ),
                    const QuoteCard(
                      image: 'assets/icons/music.svg',
                      text: 'Song 1',
                      subtext: "Opportunities don't happen, you create them",
                      
                    ),
                    const QuoteCard(
                      image: 'assets/icons/music.svg',
                      text: 'Song 2',
                      subtext:
                          "Just one small positive thought in the morning can change your whole day",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/music.svg',
                      text: 'Song 3',
                      subtext:
                          "Love your family, work super hard, live your passion",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/music.svg',
                      text: 'Song 4',
                      subtext:
                          "It is never too late to be what you might have been",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.text,
    required this.subtext,
    required this.image,
  }) : super(key: key);

  final String text, subtext, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 17),
            blurRadius: 23,
            spreadRadius: -13,
            color: kShadowColor,
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            image,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(subtext),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
