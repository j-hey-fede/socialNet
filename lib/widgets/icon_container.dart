import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final double size;

  IconContainer({required this.size}) : assert(size > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.08),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size * 0.18),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20,
            offset: Offset(
              -5,
              15,
            ),
          ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/aluptrans.png',
          width: size * 0.9,
          height: size * 0.9,
        ),
      ),
    );
  }
}
