// ignore_for_file: deprecated_member_use


import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../widgets/search_bar.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
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
                    const MusicCard(
                      image: 'assets/icons/music.svg',
                      subtext: "Opportunities don't happen, you create them",
                      songtext: "For meditation music",
                      songurl: "https://youtu.be/_4kHxtiuML0",
                    ),
                    const MusicCard(
                      image: 'assets/icons/music.svg',
                      subtext: "Opportunities don't happen, you create them",
                      songtext: "For meditation music",
                      songurl: "https://youtu.be/unSRZn9jMLg",
                    ),
                    const MusicCard(
                      image: 'assets/icons/music.svg',
                      subtext: "Opportunities don't happen, you create them",
                      songtext: "For meditation music",
                      songurl: "https://youtu.be/4fiWy_s8IXw",
                    ),
                    const MusicCard(
                      image: 'assets/icons/music.svg',
                      subtext: "Opportunities don't happen, you create them",
                      songtext: "For meditation music",
                      songurl: "https://youtu.be/77ZozI0rw7w",
                    ),
                    const MusicCard(
                      image: 'assets/icons/music.svg',
                      subtext: "Opportunities don't happen, you create them",
                      songtext: "For meditation music",
                      songurl: "https://youtu.be/8WVXk0Gz66E",
                    ),
                    const MusicCard(
                      image: 'assets/icons/music.svg',
                      subtext: "Opportunities don't happen, you create them",
                      songtext: "For meditation music",
                      songurl: "https://youtu.be/FTqrQsSIKR0",
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

class MusicCard extends StatelessWidget {
  final String image;
  final String subtext;
  final String songtext;
  final String songurl;

  const MusicCard({
    Key? key,
    required this.subtext,
    required this.image,
    required this.songtext,
    required this.songurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var defaultText = const TextStyle(color: Colors.black);
    var linkText = TextStyle(color: Colors.red.shade600);
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
                RichText(
                    text: TextSpan(children: [
                  TextSpan(style: defaultText, text: songtext),
                  TextSpan(
                      style: linkText,
                      text: "Click here",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          if (await canLaunch(songurl)) {
                            await launch(songurl);
                          } else {
                            throw "Cannot load Url";
                          }
                        })
                ])),
                Text(subtext),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
