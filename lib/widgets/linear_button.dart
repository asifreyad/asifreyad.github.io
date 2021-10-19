import 'package:flutter/material.dart';

import '/widgets/svg_icon.dart';

class LinearButton extends StatelessWidget {
  final String buttonText;
  final String iconName;

  const LinearButton({
    Key? key,
    required this.buttonText,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {},
        color: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                buttonText,
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(width: 8),
            svgIcon(iconName: iconName, color: Colors.white),
          ],
        ));
  }
}
