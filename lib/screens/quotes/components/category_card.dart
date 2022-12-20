import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  const CategoryCard({
    super.key,
    required this.svgSrc,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding:EdgeInsets.all(28)
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor)
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            child: Column(
              children: <Widget>[
                const Spacer(),
                Image.asset(svgSrc),
                const Spacer(),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
