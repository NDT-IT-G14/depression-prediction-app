import 'package:flutter/material.dart';
import 'category_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/meditation_bg.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg'),
                    ),
                  ),
                  Text(
                    "Hello Lahiru",
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Image.asset('assets/icons/search.svg'),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      CategoryCard(
                        title: "Diet Plan",
                        svgSrc: 'assets/icons/Hamburger.svg',
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Exercises",
                        svgSrc: 'assets/icons/Exercises.svg',
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Meditation",
                        svgSrc: 'assets/icons/Meditation.svg',
                        press: () {},
                      ),
                      CategoryCard(
                        title: "Yoga",
                        svgSrc: 'assets/icons/yoga.svg',
                        press: () {},
                      ),
                    ],
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
