// dashboard

import 'package:flutter/material.dart';
import 'package:portfolio/pages/service/service_page.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/widgets/bottom_nav.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/headline.dart';
import 'package:portfolio/widgets/linear_button.dart';
import 'package:portfolio/widgets/social_media_button.dart';
import 'package:portfolio/widgets/svg_icon.dart';
import 'package:portfolio/widgets/top_nav.dart';

import '/constant.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final itemKeyHome = GlobalKey();
  final itemKeyAbout = GlobalKey();
  final itemKeySkills = GlobalKey();
  final itemKeyServices = GlobalKey();

  final itemKeyHomeM = GlobalKey();
  final itemKeyAboutM = GlobalKey();

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     //
  //     body: Column(
  //       children: [
  //         //top nav
  //         if (Responsive.isDesktop(context))
  //           TopNav(
  //             itemKeyHome: itemKeyHome,
  //             itemKeyAbout: itemKeyAbout,
  //             itemKeySkills: itemKeySkills,
  //             itemKeyServices: itemKeyServices,
  //           ),
  //
  //         //body
  //         Expanded(
  //           child: SingleChildScrollView(
  //             child: SafeArea(
  //               child: Column(
  //                 children: [
  //                   // home page
  //                   if (Responsive.isDesktop(context))
  //                     Container(key: itemKeyHome, child: const HomePage()),
  //                   if (Responsive.isTablet(context)) const HomePage(),
  //                   if (Responsive.isMobile(context))
  //                     Container(key: itemKeyHomeM, child: const HomePageM()),
  //
  //                   // about
  //                   if (Responsive.isDesktop(context))
  //                     Container(key: itemKeyAbout, child: const AboutMePage()),
  //                   if (Responsive.isMobile(context))
  //                     Container(
  //                         key: itemKeyAboutM, child: const AboutMePageM()),
  //
  //                   //skills
  //                   Container(key: itemKeySkills, child: const SkillsPage()),
  //
  //                   //services
  //                   Container(key: itemKeyServices, child: const ServicePage()),
  //
  //                   //footer
  //                   Footer(itemKeyHome: itemKeyHome),
  //
  //                   //skills
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //
  //         // bottom nav
  //         if (Responsive.isMobile(context))
  //           BottomNav(
  //             itemKeyHome: itemKeyHome,
  //             itemKeyAbout: itemKeyAboutM,
  //             itemKeySkills: itemKeySkills,
  //             itemKeyServices: itemKeyServices,
  //           ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    TextStyle h4TextStyle = Theme.of(context)
        .textTheme
        .headline4!
        .copyWith(fontWeight: FontWeight.bold);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      //
      body: Column(
        children: [
          //top nav
          if (Responsive.isDesktop(context) || Responsive.isTablet(context))
            TopNav(
              itemKeyHome: itemKeyHome,
              itemKeyAbout: itemKeyAbout,
              itemKeySkills: itemKeySkills,
              itemKeyServices: itemKeyServices,
            ),

          //body
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //home
                  Container(
                    constraints: const BoxConstraints(minHeight: 500),
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: width * .1,
                    ),
                    child: Responsive.isDesktop(context)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // social icon
                              Expanded(
                                  flex: 2,
                                  // logo
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      socialMediaButton(
                                          iconName: 'linkedin.svg',
                                          type: '',
                                          data: kDevLinkedin),
                                      const SizedBox(height: 16),
                                      socialMediaButton(
                                          iconName: 'facebook.svg',
                                          type: '',
                                          data: kDevFacebook),
                                      const SizedBox(height: 16),
                                      socialMediaButton(
                                          iconName: 'email.svg',
                                          type: 'mailto:',
                                          data: kDevEmail),
                                    ],
                                  )),

                              // name, status
                              Expanded(
                                  flex: Responsive.isDesktop(context) ? 6 : 5,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Hi, I\'am Reyad',
                                          style: h4TextStyle,
                                        ),
                                        // const SizedBox(height: 4),
                                        Text('App Developer',
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1),
                                        const SizedBox(height: 8),
                                        Text(kDevDescription,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
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
                                child: Image.asset('assets/images/bg.png',
                                    fit: BoxFit.cover),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              // social icon
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      socialMediaButton(
                                          iconName: 'linkedin.svg',
                                          type: '',
                                          data: kDevLinkedin),
                                      const SizedBox(height: 16),
                                      socialMediaButton(
                                          iconName: 'facebook.svg',
                                          type: '',
                                          data: kDevFacebook),
                                      const SizedBox(height: 16),
                                      socialMediaButton(
                                          iconName: 'email.svg',
                                          type: 'mailto:',
                                          data: kDevEmail),
                                    ],
                                  ), //

                                  //
                                  SizedBox(
                                    width: width * .1,
                                  ),
                                  // image
                                  Flexible(
                                    child: Image.asset('assets/images/bg.png',
                                        fit: BoxFit.cover),
                                  ), // name, status
                                ],
                              ),

                              const SizedBox(height: 24),

                              // name
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1),
                                    const SizedBox(height: 8),
                                    Text(kDevDescription,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                    const SizedBox(height: 24),
                                    const LinearButton(
                                      buttonText: 'Contact Me',
                                      iconName: 'navigator.svg',
                                    )
                                  ]),
                            ],
                          ),
                  ),

                  //about
                  Container(
                    constraints: const BoxConstraints(minHeight: 500),
                    // color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        vertical: 40, horizontal: width * .1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //headline
                        headline(context, text: 'About Me'),
                        Text('My Introduction',
                            style: Theme.of(context).textTheme.subtitle2),
                        const SizedBox(height: 50),

                        //image and about
                        if (Responsive.isDesktop(context))
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // my image
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    constraints:
                                        const BoxConstraints(minHeight: 300),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/reyad.jpg',
                                          ),
                                          fit: BoxFit.contain,
                                        )),
                                  ),
                                ),

                                const SizedBox(width: 50),

                                // my bio
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      constraints:
                                          const BoxConstraints(minHeight: 300),
                                      // color: Colors.red,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(kAboutMeDescription,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1),

                                          const SizedBox(height: 16),

                                          // experience
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              aboutMePoint(context,
                                                  tittle: '03+',
                                                  subtitle:
                                                      'Years\nexperience'),
                                              const SizedBox(height: 8),
                                              aboutMePoint(context,
                                                  tittle: '20+',
                                                  subtitle:
                                                      'Completed\nprojects'),
                                              const SizedBox(height: 8),
                                              aboutMePoint(context,
                                                  tittle: '05+',
                                                  subtitle:
                                                      'Companies\nworked'),
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

                        // mobile
                        if ((Responsive.isTablet(context) ||
                            Responsive.isMobile(context)))
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // my image
                                Container(
                                  constraints:
                                      const BoxConstraints(minHeight: 300),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/images/reyad.jpg',
                                        ),
                                        fit: BoxFit.contain,
                                      )),
                                ),

                                const SizedBox(height: 50),

                                // my bio
                                Container(
                                  constraints:
                                      const BoxConstraints(minHeight: 200),
                                  // color: Colors.red,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(kAboutMeDescription,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1),

                                      // experience
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal:
                                                Responsive.isTablet(context)
                                                    ? width * .1
                                                    : 0,
                                            vertical: 16),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            aboutMePoint(context,
                                                tittle: '03+',
                                                subtitle: 'Years\nexperience'),
                                            const SizedBox(height: 4),
                                            aboutMePoint(context,
                                                tittle: '20+',
                                                subtitle:
                                                    'Completed\nprojects'),
                                            const SizedBox(height: 4),
                                            aboutMePoint(context,
                                                tittle: '05+',
                                                subtitle: 'Companies\nworked'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(height: 16),

                                // cv
                                const LinearButton(
                                    buttonText: 'Download Cv',
                                    iconName: 'download.svg'),
                              ]),

                        const SizedBox(height: 50),
                      ],
                    ),
                  ),

                  // skills
                  Container(
                    constraints: const BoxConstraints(minHeight: 500),
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: MediaQuery.of(context).size.width * .1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headline(context, text: 'Skills'),
                        Text('My Technical level',
                            style: Theme.of(context).textTheme.subtitle2),
                        const SizedBox(height: 50),

                        //
                        if (Responsive.isDesktop(context) ||
                            Responsive.isTablet(context))
                          Column(
                            children: [
                              // 1st row
                              Row(
                                children: [
                                  // my fronted
                                  Expanded(
                                    child: Column(
                                      children: [
                                        myListTile(
                                          leadingIconName: 'curly.svg',
                                          title: 'Fronted developer',
                                          years: '2',
                                        ),
                                        const SizedBox(height: 12),
                                        Column(
                                          children: [
                                            skillCard(
                                                text: 'html', percentage: 90),
                                            skillCard(
                                                text: 'css', percentage: 80),
                                            skillCard(
                                                text: 'java Script',
                                                percentage: 60),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: width * .05),

                                  // wordpress
                                  Expanded(
                                    child: Column(
                                      children: [
                                        myListTile(
                                          leadingIconName: 'wordpress.svg',
                                          title: 'WordPress developer',
                                          years: '1',
                                        ),
                                        const SizedBox(height: 12),
                                        Column(
                                          children: [
                                            skillCard(
                                                text: 'elementor',
                                                percentage: 90),
                                            skillCard(
                                                text: 'divi', percentage: 80),
                                            skillCard(
                                                text: 'e-commerce',
                                                percentage: 60),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: height * .05),

                              //2nd row
                              Row(
                                children: [
                                  // ui
                                  Expanded(
                                    child: Column(
                                      children: [
                                        myListTile(
                                          leadingIconName: 'object.svg',
                                          title: 'Ui/Ux designer',
                                          years: '2',
                                        ),
                                        const SizedBox(height: 12),
                                        Column(
                                          children: [
                                            skillCard(
                                                text: 'figma', percentage: 75),
                                            skillCard(
                                                text: 'adobe Xd',
                                                percentage: 70),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: width * .05),

                                  // mobile
                                  Expanded(
                                    child: Column(
                                      children: [
                                        myListTile(
                                          leadingIconName: 'mobile.svg',
                                          title: 'App developer',
                                          years: '2',
                                        ),
                                        const SizedBox(height: 12),
                                        Column(
                                          children: [
                                            skillCard(
                                                text: 'Flutter',
                                                percentage: 75),
                                            skillCard(
                                                text: 'dart', percentage: 70),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),

                        if (Responsive.isMobile(context))
                          Column(
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
                                      skillCard(
                                          text: 'java Script', percentage: 60),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: height * .05),

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
                                      skillCard(
                                          text: 'elementor', percentage: 90),
                                      skillCard(text: 'divi', percentage: 80),
                                      skillCard(
                                          text: 'e-commerce', percentage: 60),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: height * .05),

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
                                      skillCard(
                                          text: 'adobe Xd', percentage: 70),
                                    ],
                                  ),
                                ],
                              ),

                              SizedBox(height: height * .05),

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
                                      skillCard(
                                          text: 'Flutter', percentage: 75),
                                      skillCard(text: 'dart', percentage: 70),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: height * .05),
                            ],
                          ),
                      ],
                    ),
                  ),

                  // services
                  Container(
                    width: width,
                    constraints: const BoxConstraints(minHeight: 600),
                    // color: Colors.red,
                    padding: EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: //Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                              ? (width * .02)
                              : (width * .1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headline(context, text: 'Services'),
                        Text('What i offer',
                            style: Theme.of(context).textTheme.subtitle2),
                        const SizedBox(height: 50),

                        if (Responsive.isDesktop(context) ||
                            Responsive.isTablet(context))
                          Row(children: [
                            //
                            Expanded(
                              child: serviceCard(
                                context,
                                title: 'UI/Ux\nDesigner',
                                iconName: 'object.svg',
                                list: uiList,
                              ),
                            ),

                            SizedBox(width: width * .01),

                            Expanded(
                              child: serviceCard(
                                context,
                                title: 'App\nDeveloper',
                                iconName: 'mobile.svg',
                                list: appList,
                              ),
                            ),

                            SizedBox(width: width * .01),

                            Expanded(
                              child: serviceCard(
                                context,
                                title: 'Frontend\nDeveloper',
                                iconName: 'curly.svg',
                                list: frontendList,
                              ),
                            ),
                          ]),

                        //
                        if (Responsive.isMobile(context))
                          Column(children: [
                            //
                            SizedBox(
                              width: width * .8,
                              child: serviceCard(
                                context,
                                title: 'UI/Ux\nDesigner',
                                iconName: 'object.svg',
                                list: uiList,
                              ),
                            ),

                            SizedBox(height: height * .01),

                            SizedBox(
                              width: width * .8,
                              child: serviceCard(
                                context,
                                title: 'App\nDeveloper',
                                iconName: 'mobile.svg',
                                list: appList,
                              ),
                            ),

                            SizedBox(height: height * .01),

                            SizedBox(
                              width: width * .8,
                              child: serviceCard(
                                context,
                                title: 'Frontend\nDeveloper',
                                iconName: 'curly.svg',
                                list: frontendList,
                              ),
                            ),
                          ]),

                        const SizedBox(height: 50),
                      ],
                    ),
                  ),

                  //footer
                  Footer(itemKeyHome: itemKeyHome),
                ],
              ),
            ),
          ),

          // bottom nav
          if (Responsive.isMobile(context))
            BottomNav(
              itemKeyHome: itemKeyHome,
              itemKeyAbout: itemKeyAbout,
              itemKeySkills: itemKeySkills,
              itemKeyServices: itemKeyServices,
            ),
        ],
      ),
    );
  }
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
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
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

//
// service card
Widget serviceCard(
  context, {
  required String title,
  required String iconName,
  required List list,
}) {
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
          svgIcon(iconName: iconName, height: 64, width: 64),
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
                              // dialogText(list, index: 0),
                              // const SizedBox(height: 8),
                              // dialogText(list, index: 1),
                              // const SizedBox(height: 8),
                              // dialogText(list, index: 2),
                              // const SizedBox(height: 8),
                              // dialogText(list, index: 3),
                            ],
                          ),
                        ),
                      ));
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'View More',
                    style: TextStyle(color: Colors.deepPurpleAccent.shade200),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_right_alt_outlined,
                    color: Colors.deepPurpleAccent.shade200,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
