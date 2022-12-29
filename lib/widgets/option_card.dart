import 'package:depression_prediction_app/constants.dart';
import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    super.key,
    required this.option,
    required this.onTap,
    required this.selectIndex,
  });
  final String option;
  final VoidCallback onTap;
  final bool selectIndex;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        selectedTileColor: Colors.amberAccent,
        selectedColor: kBlackColor,
        selected: selectIndex,
        onTap: onTap,
        title: Text(
          option,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22.0),
        ),
      ),
    );
  }
}
