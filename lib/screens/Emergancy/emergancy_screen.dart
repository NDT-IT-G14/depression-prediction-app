import 'package:flutter/material.dart';
import 'Emergancy_card.dart';

class EmergancyScreen extends StatelessWidget {
  static const routeName = "/emergancy_screen";
  const EmergancyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage("assets/images/dfbjj.png"),
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
                      "Emergency",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 35),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: size.width * .8, // it just take 60% of total width
                      child: const Text(
                        "Contact Us if you are in severe condition.",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(height: 150),
                    const EmergancyCard(
                      text: '1990',
                      subtext: "Suwa Sariya Ambulance Service",
                      image: 'assets/icons/emergency-call-svgrepo-com.svg',
                    ),
                    const EmergancyCard(
                      image: 'assets/icons/emergency-call-svgrepo-com.svg',
                      text: '1984 ',
                      subtext:
                          " Hot line for counseling and operational activities",
                    ),
                    const EmergancyCard(
                      image: 'assets/icons/emergency-call-svgrepo-com.svg',
                      text: '911',
                      subtext: "Emergency Number",
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
