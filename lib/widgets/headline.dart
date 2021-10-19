import 'package:flutter/material.dart';

Widget headline(context, {required String text}) {
  return Text(
    text,
    style: Theme.of(context)
        .textTheme
        .headline4!
        .copyWith(fontWeight: FontWeight.bold),
  );
}
