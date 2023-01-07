import 'package:depression_prediction_app/screens/feedback/feedback_screen.dart';
import 'package:depression_prediction_app/screens/music/music_screen.dart';
import 'package:depression_prediction_app/screens/quiz/quiz_screen.dart';
import 'package:depression_prediction_app/screens/quotes/quote_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/category_card.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: const NavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .40,
            decoration: const BoxDecoration(
              color: kPrimaryLightColor,
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
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Check Your Mental Health\nWithout Going Anyware",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(QuizScreen.routeName);
                    },
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
                          press: () {
                            Navigator.of(context)
                                .pushNamed(MusicScreen.routeName);
                          },
                        ),
                        CategoryCard(
                          title: "Reading Quotes",
                          svgSrc: "assets/icons/Excrecises.svg",
                          press: () {
                            Navigator.of(context)
                                .pushNamed(QuotesScreen.routeName);
                          },
                        ),
                        CategoryCard(
                          title: "Our 24/7 Severices",
                          svgSrc: "assets/icons/Meditation.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Our Feedbacks",
                          svgSrc: "assets/icons/yoga.svg",
                          press: () {
                            Navigator.of(context)
                                .pushNamed(FeedbackScreen.routeName);
                          },
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
