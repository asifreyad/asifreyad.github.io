import 'package:flutter/material.dart';

import '/constant.dart';
import '/widgets/headline.dart';
import '/widgets/linear_button.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 500),
      // color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: MediaQuery.of(context).size.width * .1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          headline(context, text: 'About Me'),
          Text('My Introduction', style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 50),

          //image and about
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // my image
                Expanded(
                  flex: 2,
                  child: Container(
                    constraints: const BoxConstraints(minHeight: 300),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/reyad.jpg',
                            ),
                            fit: BoxFit.contain)),
                  ),
                ),

                const SizedBox(width: 16),

                // my bio
                Expanded(
                    flex: 3,
                    child: Container(
                      constraints: const BoxConstraints(minHeight: 30),
                      // color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(kAboutMeDescription,
                              style: Theme.of(context).textTheme.bodyText1),

                          const SizedBox(height: 16),

                          // experience
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              aboutMePoint(context,
                                  tittle: '03+', subtitle: 'Years\nexperience'),
                              const SizedBox(height: 8),
                              aboutMePoint(context,
                                  tittle: '20+',
                                  subtitle: 'Completed\nprojects'),
                              const SizedBox(height: 8),
                              aboutMePoint(context,
                                  tittle: '05+', subtitle: 'Companies\nworked'),
                            ],
                          ),

                          const SizedBox(height: 16),

                          // cv
                          const LinearButton(
                              buttonText: 'Download Cv',
                              iconName: 'download.svg'),
                        ],
                      ),
                    )),
              ]),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  // about me bullet
  Widget aboutMePoint(context,
      {required String tittle, required String subtitle}) {
    return Column(
      children: [
        Text(
          tittle,
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w800),
        ),
        // const SizedBox(height: 8),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}
