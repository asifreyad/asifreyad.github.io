import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/svg_icon.dart';

import '/widgets/headline.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

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
          headline(context, text: 'Services'),
          Text('What i offer', style: Theme.of(context).textTheme.subtitle2),
          const SizedBox(height: 50),
          GridView.count(
              crossAxisCount: Responsive.isMobile(context) ? 1 : 3,
              shrinkWrap: true,
              mainAxisSpacing: 8,
              crossAxisSpacing: 16,
              childAspectRatio: 1,
              padding: Responsive.isMobile(context)
                  ? const EdgeInsets.all(8)
                  : const EdgeInsets.all(16),
              physics: const NeverScrollableScrollPhysics(),
              children: [
                //
                serviceCard(
                  context,
                  title: 'UI/Ux\nDesigner',
                  iconName: 'object.svg',
                  list: uiList,
                ),

                serviceCard(
                  context,
                  title: 'App\nDeveloper',
                  iconName: 'mobile.svg',
                  list: appList,
                ),

                serviceCard(
                  context,
                  title: 'Frontend\nDeveloper',
                  iconName: 'curly.svg',
                  list: frontendList,
                ),
              ]),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  // service card
  Widget serviceCard(context,
      {required String title, required String iconName, required List list}) {
    return Card(
      elevation: Responsive.isMobile(context) ? 6 : 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            svgIcon(iconName: iconName, height: 48, width: 48),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w700, color: Colors.black87),
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => Dialog(
                          child: Container(
                            constraints: const BoxConstraints(maxWidth: 400),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                //title
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .copyWith(color: Colors.black87),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: const Icon(Icons.clear))
                                  ],
                                ),

                                const SizedBox(height: 16),
                                // message
                                dialogText(list, index: 0),
                                const SizedBox(height: 8),
                                dialogText(list, index: 1),
                                const SizedBox(height: 8),
                                dialogText(list, index: 2),
                                const SizedBox(height: 8),
                                dialogText(list, index: 3),
                              ],
                            ),
                          ),
                        ));
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'View More',
                    style: TextStyle(color: Colors.deepPurpleAccent.shade200),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Icon(
                      Icons.arrow_right_alt_outlined,
                      color: Colors.deepPurpleAccent.shade200,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // dialog text
  Widget dialogText(List list, {required int index}) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      svgIcon(iconName: 'check.svg'),
      const SizedBox(width: 4),
      Text(list[index]),
    ]);
  }
}

List uiList = [
  'I develop the use interface',
  'Web page development',
  'I create ux element interactions',
  'I position your company brand',
];
List appList = [
  'a0',
  'a1 afaf',
  'a2 fafa',
  'a3',
];
List frontendList = [
  'f0',
  'f1',
  'f2',
  'f3',
];
