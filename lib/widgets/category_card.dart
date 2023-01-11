import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback press;
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 33,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Image.asset(image),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
