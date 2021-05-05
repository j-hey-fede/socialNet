import 'package:desi/utils/responsive.dart';
import 'package:desi/widgets/icon_container.dart';
import "package:flutter/material.dart";

import '../widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final double pinkSize = responsive.wp(85);
    final double amberSize = responsive.wp(55);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Stack(
          alignment: Alignment.center,
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
            Positioned(
              top: pinkSize * 0.44,
              child: Column(
                children: [
                  IconContainer(
                    size: responsive.wp(25),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "welcome!\ncome inside",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: responsive.dp(2.44),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
