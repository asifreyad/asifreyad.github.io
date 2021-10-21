import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/svg_icon.dart';

import '/widgets/headline.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 500),
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: 40, horizontal: MediaQuery.of(context).size.width * .1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          headline(context, text: 'Skills'),
          Text('My Technical level',
              style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 50),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: Responsive.isMobile(context) ? 1 : 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 50,
            childAspectRatio: Responsive.isMobile(context) ? 1.6 : 5 / 2,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              // my fronted
              Column(
                children: [
                  myListTile(
                    leadingIconName: 'curly.svg',
                    title: 'Fronted developer',
                    years: '2',
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      skillCard(text: 'html', percentage: 90),
                      skillCard(text: 'css', percentage: 80),
                      skillCard(text: 'java Script', percentage: 60),
                    ],
                  ),
                ],
              ),

              // wordpress
              Column(
                children: [
                  myListTile(
                    leadingIconName: 'wordpress.svg',
                    title: 'WordPress developer',
                    years: '1',
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      skillCard(text: 'elementor', percentage: 90),
                      skillCard(text: 'divi', percentage: 80),
                      skillCard(text: 'e-commerce', percentage: 60),
                    ],
                  ),
                ],
              ),

              // ui
              Column(
                children: [
                  myListTile(
                    leadingIconName: 'object.svg',
                    title: 'Ui/Ux designer',
                    years: '2',
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      skillCard(text: 'figma', percentage: 75),
                      skillCard(text: 'adobe Xd', percentage: 70),
                    ],
                  ),
                ],
              ),

              // mobile
              Column(
                children: [
                  myListTile(
                    leadingIconName: 'mobile.svg',
                    title: 'App developer',
                    years: '2',
                  ),
                  const SizedBox(height: 12),
                  Column(
                    children: [
                      skillCard(text: 'Flutter', percentage: 75),
                      skillCard(text: 'dart', percentage: 70),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  //
  Widget skillCard({required String text, required double percentage}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text.toUpperCase()),
              Text(percentage.toStringAsFixed(0) + ' %'),
            ],
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.deepPurpleAccent.shade100,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.deepPurple),
            value: percentage / 100,
          )
        ],
      ),
    );
  }

  // custom list tile
  Widget myListTile({
    required String leadingIconName,
    required String title,
    required String years,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            svgIcon(iconName: leadingIconName),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                Text(
                  'More than $years years',
                  style: const TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ],
        ),
        const Icon(
          Icons.keyboard_arrow_down_rounded,
        ),
      ],
    );
  }
}
