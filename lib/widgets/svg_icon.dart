import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget svgIcon({required String iconName, Color? color}) {
  return SvgPicture.asset(
    'assets/icons/$iconName',
    color: color,
  );
  // semanticsLabel: 'Acme Logo'
}
