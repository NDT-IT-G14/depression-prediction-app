import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/home/components/list_card.dart';
import 'screens/quiz/quiz_screen.dart';
import 'widgets/category_card.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .40,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                scale: 1.9,
                alignment: Alignment.centerRight,
                image: AssetImage("assets/images/home_image.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                    ),
                  ),
                  const Text(
                    "Check Your Mental Health\nWithout Going Anyware",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: kShadowColor),
                        ),
                      ),
                    ),
                    child: const Text('Start quiz'),
                  ),
                  const SizedBox(height: 35),
                  const SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Songs Recommendation",
                          svgSrc: "assets/icons/Hamburger.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Reading Quotes",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Our 24/7 Severices",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Our Feedbacks",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
SingleChildScrollView Card(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListCard(
              text: 'Profile',
              subtext: "Sea your profile",
              press: () {},
            ),
            ListCard(
              text: 'Quotes',
              subtext: "Fulfill your life",
              press: () {},
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListCard(
              text: 'Emergancy',
              subtext: "Enjoy your life",
              press: () {},
            ),
            ListCard(
              text: 'Feedbacks',
              subtext: "Fulfill your life",
              press: () {},
            ),
          ],
        ),
      ],
    ),
  );
}
