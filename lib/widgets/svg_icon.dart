import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgIcon(
    {required String iconName, Color? color, double? height, double? width}) {
  return SvgPicture.asset(
    'assets/icons/$iconName',
    color: color,
    height: height,
    width: width,
  );
  // semanticsLabel: 'Acme Logo'
}
