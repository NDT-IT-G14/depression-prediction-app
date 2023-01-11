import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widgets/search_bar.dart';
import 'quote_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

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
              color: kBlueLightColor,
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
                      "Daily Quotes",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "Mental health... is not a destination, but a process.It's about how you drive, not where you're going (NOAM SHPANGER, PHD)",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBar(),
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 1',
                      subtext:
                          "You don't have to control your thoughts.You just have to stop letting them cotrol you ----Dan Millman",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 2',
                      subtext:
                          "Not until we are lost do we begin to understand ourselves",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 3',
                      subtext:
                          "Happiness can be found even in the darkest of times, if one only remembers to turn on the light",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'Day 4',
                      subtext:
                          "Just because no one else can heal or do your inner work for you doesn’t mean do it alone",
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
