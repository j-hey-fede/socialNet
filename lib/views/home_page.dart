import "package:flutter/material.dart";

import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double pinkSize = size.width * 0.85;
    final double amberSize = size.width * 0.55;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -(pinkSize) * 0.25,
              right: -(pinkSize) * 0.15,
              child: Circle(
                colors: [Colors.pink, Colors.purple],
                size: pinkSize,
              ),
            ),
            Positioned(
              top: -(amberSize) * 0.2,
              left: -(amberSize) * 0.2,
              child: Circle(
                colors: [Colors.amber, Colors.deepOrangeAccent],
                size: amberSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
