import 'package:flutter/material.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Social",
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
          Text(
            "NET",
            style: TextStyle(color: Colors.purple, fontSize: 22),
          ),
        ],
      ),
    ],
  );
}
