import 'package:flutter/material.dart';
import 'dart:math' as math;

class Responsive {
  late double _width;
  late double _height;
  late double _diag;
  late bool _isTablet;

  double get width => _width;
  double get height => _height;
  double get diag => _diag;
  bool get isTablet => _isTablet;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    this._width = size.width;
    this._height = size.height;

    //c2 = a2 + b2
    this._diag = math.sqrt(math.pow(_width, 2) + math.pow(height, 2));

    this._isTablet = size.shortestSide >= 600;
  }

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;
  double dp(double percent) => _diag * percent / 100;
}
