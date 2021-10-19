import 'package:flutter/material.dart';

import '/widgets/svg_icon.dart';

Widget socialMediaButton({required String iconName}) {
  return MaterialButton(
      onPressed: () {},
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(16),
      child: svgIcon(iconName: iconName));
}
