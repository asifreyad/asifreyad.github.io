import 'package:flutter/material.dart';
import 'package:portfolio/widgets/social_media_button.dart';

import '../constant.dart';
import '../responsive.dart';
import 'logo.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minHeight: Responsive.isMobile(context) ? 300 : 220),
      color: Colors.black26,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Responsive.isMobile(context)
              ? Container(
                  constraints: const BoxConstraints(minHeight: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //logo
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // icon
                          logo(),
                          Text(
                            'App Developer',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(fontSize: 13),
                          ),
                        ],
                      ),

                      // const SizedBox(height: 16),

                      //menu
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'About',
                            style: TextStyle(color: Colors.black87),
                          ),
                          Text(
                            'Skills',
                            style: TextStyle(color: Colors.black87),
                          ),
                          Text(
                            'Services',
                            style: TextStyle(color: Colors.black87),
                          ),
                          Text(
                            'Portfolio',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),

                      // const SizedBox(height: 16),

                      //icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          socialMediaButton(
                              iconName: 'linkedin.svg',
                              type: '',
                              data: kDevLinkedin),
                          socialMediaButton(
                              iconName: 'facebook.svg',
                              type: '',
                              data: kDevFacebook),
                          socialMediaButton(
                              iconName: 'email.svg',
                              type: 'mailto',
                              data: kDevEmail),
                        ],
                      ),
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //logo
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // icon
                          logo(),
                          Text(
                            'App Developer',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ],
                      ),

                      //menu
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'About',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Skills',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Services',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Portfolio',
                              style: TextStyle(color: Colors.black87),
                            ),
                          ),
                        ],
                      ),

                      //icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          socialMediaButton(
                              iconName: 'linkedin.svg',
                              type: '',
                              data: kDevLinkedin),
                          socialMediaButton(
                              iconName: 'facebook.svg',
                              type: '',
                              data: kDevFacebook),
                          socialMediaButton(
                              iconName: 'email.svg',
                              type: 'mailto',
                              data: kDevEmail),
                        ],
                      ),
                    ],
                  ),
                ),
          const Text('© asifreyad.github.io | All right reserved')
        ],
      ),
    );
  }

//

}
