import 'package:flutter/material.dart';
import '../../widgets/search_bar.dart';
import '../quotes/components/body.dart';
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
                      "24/7 Severices",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBar(),
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Doctor name',
                      subtext: "Hospital details",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Doctor name',
                      subtext: "Hospital details",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Doctor name',
                      subtext: "Hospital details",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Doctor name',
                      subtext: "Hospital details",
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
