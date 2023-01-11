import 'package:depression_prediction_app/screens/feedback/feedback_screen.dart';
import 'package:depression_prediction_app/screens/music/music_screen.dart';
import 'package:depression_prediction_app/screens/quiz/quiz_screen.dart';
import 'package:depression_prediction_app/screens/quotes/quote_screen.dart';
import 'package:depression_prediction_app/screens/severices/severice_screen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../widgets/category_card.dart';
import '../../widgets/search_bar.dart';
import 'components/my_drawer_header.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home_screen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: kPrimaryColor,
        backgroundColor: kPrimaryLightColor,
      ),
      drawer: const Drawer(
        child: SingleChildScrollView(
          child: MyHeaderDrawer(),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .30,
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
                  const Text(
                    "Check Your Mental Health\nWithout Going Anyware",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
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
                  const SizedBox(height: 20),
                  const SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Songs",
                          image: "assets/images/Artboard_1.png",
                          press: () {
                            Navigator.of(context)
                                .pushNamed(MusicScreen.routeName);
                          },
                        ),
                        CategoryCard(
                          title: "Reading Quotes",
                          image: "assets/images/Artboard_2.png",
                          press: () {
                            Navigator.of(context)
                                .pushNamed(QuotesScreen.routeName);
                          },
                        ),
                        CategoryCard(
                          title: "Severices",
                          image: "assets/images/Artboard_3.png",
                          press: () {
                            Navigator.of(context)
                                .pushNamed(SevericeScreen.routeName);
                          },
                        ),
                        CategoryCard(
                          title: "Our Feedbacks",
                          image: "assets/images/Artboard_4.png",
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
