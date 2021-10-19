import 'package:flutter/material.dart';

Widget logo() {
  return Row(
    children: const [
      Text(
        '.asif',
        style: TextStyle(color: Colors.black),
      ),
      Text(
        'Reyad',
        style: TextStyle(
            color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
