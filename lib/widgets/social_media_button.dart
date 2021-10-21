import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/widgets/svg_icon.dart';

Widget socialMediaButton({
  required String iconName,
  required String type,
  required String data,
}) {
  return InkWell(
    onTap: () async {
      if (await canLaunch(data)) {
        await launch(type + data);
      } else {
        throw 'Could not launch $data';
      }
    },
    borderRadius: BorderRadius.circular(50),
    child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: svgIcon(iconName: iconName)),
  );
}
