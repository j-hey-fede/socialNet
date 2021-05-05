import "package:flutter/material.dart";

import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -120,
              right: -100,
              child: Circle(
                colors: [Colors.pink, Colors.purple],
                size: 400,
              ),
            ),
            Positioned(
              top: -100,
              left: -75,
              child: Circle(
                colors: [Colors.amber, Colors.deepOrangeAccent],
                size: 240,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
