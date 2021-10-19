import 'package:flutter/material.dart';
import 'package:portfolio/widgets/linear_button.dart';
import 'package:portfolio/widgets/social_media_button.dart';

import '/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle h4TextStyle = Theme.of(context)
        .textTheme
        .headline4!
        .copyWith(fontWeight: FontWeight.bold);

    return Container(
      constraints: const BoxConstraints(minHeight: 500),
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: MediaQuery.of(context).size.width * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 1,

              // logo
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  socialMediaButton(iconName: 'linkedin.svg'),
                  const SizedBox(height: 16),
                  socialMediaButton(iconName: 'facebook.svg'),
                  const SizedBox(height: 16),
                  socialMediaButton(iconName: 'email.svg'),
                ],
              )),

          // name, status
          Expanded(
              flex: 3,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi, I\'am Reyad',
                      style: h4TextStyle,
                    ),
                    // const SizedBox(height: 4),
                    Text('App Developer',
                        style: Theme.of(context).textTheme.subtitle1),
                    const SizedBox(height: 8),
                    Text(kDevDescription,
                        style: Theme.of(context).textTheme.bodyText1),
                    const SizedBox(height: 16),
                    const SizedBox(height: 8),
                    const LinearButton(
                      buttonText: 'Contact Me',
                      iconName: 'navigator.svg',
                    )
                  ])),

          // image
          Expanded(
            flex: 3,
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
