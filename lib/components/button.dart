import 'package:flutter/material.dart';

class Button {
  static RoseButton(BuildContext context, String label, Widget widget) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widget));
      },
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blue[900],
          padding: EdgeInsets.all(20.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0))),
      child: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
      ),
    );
  }
}
