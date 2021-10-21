import 'package:flutter/material.dart';

Widget logo() {
  return Row(
    children: const [
      Text(
        '.asif',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
      ),
      Text(
        'Reyad',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontWeight: FontWeight.bold,
          fontSize: 22,
        ),
      ),
    ],
  );
}
