import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../widgets/search_bar.dart';
import '../quotes/components/quote_card.dart';

class SevericeScreen extends StatelessWidget {
  static const routeName = "/severice_screen";
  const SevericeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: const NavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
              image: DecorationImage(
                image: AssetImage("assets/images/meditation_bg.png"),
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
                      "Services",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "Hear the specialist contact numbers, you can contact them for more information .",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBar(),
                    ),
                    const ServiceCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'DASANTHI AKMEEMANA',
                      subtext:
                          "Sri Jayewardenepura General Hospital - 0112 778610",
                    ),
                    const ServiceCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'MRS A.K.D. ARUNI THUSHARA ABEYSINGHE',
                      subtext: "Durdans Hospital - 0115 410000",
                    ),
                    const ServiceCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'D.R.R ABEYSINGHE - 0817 770700',
                      subtext: "CCC Kandy",
                    ),
                    const ServiceCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'B.C.M ABEYSOORIYA',
                      subtext: "iChange Canter - 077 706 3013",
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

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.text,
    required this.subtext,
    required this.image,
  }) : super(key: key);

  final String text, subtext, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      height: 90,
      decoration: BoxDecoration(
        color: Colors.yellow.shade100,
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
