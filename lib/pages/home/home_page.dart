import 'package:flutter/material.dart';
import 'package:portfolio/widgets/linear_button.dart';
import 'package:portfolio/widgets/social_media_button.dart';

import '/constant.dart';
import '/responsive.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (Responsive.isDesktop(context))
            // social icon
            Expanded(
                flex: 2,

                // logo
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialMediaButton(
                        iconName: 'linkedin.svg', type: '', data: kDevLinkedin),
                    const SizedBox(height: 16),
                    socialMediaButton(
                        iconName: 'facebook.svg', type: '', data: kDevFacebook),
                    const SizedBox(height: 16),
                    socialMediaButton(
                        iconName: 'email.svg', type: 'mailto', data: kDevEmail),
                  ],
                )),

          // name, status
          Expanded(
              flex: 6,
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
            flex: 6,
            child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }

//

}

//

class HomePageM extends StatelessWidget {
  const HomePageM({Key? key}) : super(key: key);

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // social icon
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialMediaButton(
                        iconName: 'linkedin.svg', type: '', data: kDevLinkedin),
                    const SizedBox(height: 16),
                    socialMediaButton(
                        iconName: 'facebook.svg', type: '', data: kDevFacebook),
                    const SizedBox(height: 16),
                    socialMediaButton(
                        iconName: 'email.svg',
                        type: 'mailto:',
                        data: kDevEmail),
                  ],
                ),
              ),
              // image
              Expanded(
                flex: 3,
                child: Image.asset('assets/images/bg.png', fit: BoxFit.cover),
              )
            ],
          ),

          // name, status

          Column(
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
              ])
        ],
      ),
    );
  }

//

}
