// ignore_for_file: prefer_const_constructors
import 'package:depression_prediction_app/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'onbording_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  late PageController _controller;

  List<Map<String, String>> onbordingData = [
    {
      "text": "Detect Depression through \na Machine Learning",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Effective for Detect \nLevel of Depression",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Give instructions to \nmeet a psychiatrist",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: onbordingData.length,
                  itemBuilder: (context, index) => OnbordingContent(
                    text: onbordingData[index]['text'].toString(),
                    image: onbordingData[index]['image'].toString(),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onbordingData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: size.width * 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(29),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                          ),
                          onPressed: () {
                            if (currentPage == onbordingData.length - 1) {
                              Navigator.of(context)
                                  .pushNamed(SignUpScreen.routeName);
                            }
                            _controller.nextPage(
                                duration: Duration(milliseconds: 100),
                                curve: Curves.bounceIn);
                          },
                          child: Text(
                            currentPage == onbordingData.length - 1
                                ? "Continue"
                                : "Next",
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 6 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
