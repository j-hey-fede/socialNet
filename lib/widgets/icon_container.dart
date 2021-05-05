import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconContainer extends StatelessWidget {
  final double size;

  IconContainer({required this.size}) : assert(size > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size * 0.10),
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
        child: SvgPicture.asset(
          'assets/triangular.svg',
          width: size * 0.8,
          height: size * 0.8,
        ),
      ),
    );
  }
}
