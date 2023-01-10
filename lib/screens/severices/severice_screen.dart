import 'package:flutter/material.dart';
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
                      "24/7 Services",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "We all are something, but none of us are everything.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: const SearchBar(),
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'DASANTHI AKMEEMANA',
                      subtext:
                          "Sri Jayewardenepura General Hospital - 0112 778610",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'MRS A.K.D. ARUNI THUSHARA ABEYSINGHE',
                      subtext: "Durdans Hospital - 0115 410000",
                    ),
                    const QuoteCard(
                      image: 'assets/icons/Meditation_women_small.svg',
                      text: 'D.R.R ABEYSINGHE - 0817 770700',
                      subtext: "CCC Kandy",
                    ),
                    const QuoteCard(
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
