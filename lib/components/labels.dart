import 'package:flutter/cupertino.dart';

class Labels {
  static inputlabels(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
      ),
    );
  }
}
