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
            "Autism",
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
          Text(
            "LevelUP!",
            style: TextStyle(color: Colors.amber, fontSize: 22),
          ),
        ],
      ),
      CircleAvatar(
        backgroundImage: AssetImage(
          'assets/aluptrans.png',
        ),
        radius: 24,
      ),
    ],
  );
}
