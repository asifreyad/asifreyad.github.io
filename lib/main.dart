import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:portfolio/pages/service/service_page.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/svg_icon.dart';

import '/pages/about/about_page.dart';
import '/pages/home/home_page.dart';
import '/widgets/logo.dart';
import 'pages/skills/skills_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'asifreyad.github.io',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const DashboardPage(),
    );
  }
}

// dashboard
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final itemKeyHome = GlobalKey();
  final itemKeyHomeM = GlobalKey();
  final itemKeyAbout = GlobalKey();
  final itemKeyAboutM = GlobalKey();
  final itemKeySkills = GlobalKey();
  final itemKeyServices = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          //header
          if (Responsive.isDesktop(context)) myAppBar(context),

          //body
          Expanded(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    // home page
                    if (Responsive.isDesktop(context))
                      Container(key: itemKeyHome, child: const HomePage()),
                    if (Responsive.isTablet(context)) const HomePage(),
                    if (Responsive.isMobile(context))
                      Container(key: itemKeyHomeM, child: const HomePageM()),

                    // about
                    if (Responsive.isDesktop(context))
                      Container(key: itemKeyAbout, child: const AboutMePage()),
                    if (Responsive.isMobile(context))
                      Container(
                          key: itemKeyAboutM, child: const AboutMePageM()),

                    //skills
                    Container(key: itemKeySkills, child: const SkillsPage()),

                    //services
                    Container(key: itemKeyServices, child: const ServicePage()),

                    //footer
                    const Footer(),

                    //skills
                  ],
                ),
              ),
            ),
          ),

          // bottom nav
          if (Responsive.isMobile(context))
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  logo(),
                  IconButton(
                      onPressed: () {
                        showMaterialModalBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            constraints: const BoxConstraints(maxHeight: 260),
                            child: bottomSheet(context),
                          ),
                        );
                      },
                      icon: const Icon(Icons.apps_outlined)),
                ],
              ),
            ),
        ],
      ),
    );
  }

  //
  Column bottomSheet(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const SizedBox(height: 8),
        Container(
          width: 100,
          height: 5,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        //
        Container(
            constraints: const BoxConstraints(maxHeight: 200),
            child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1.8,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  BottomNavButton(
                      newContext: context,
                      label: 'Home',
                      iconName: "home.svg",
                      itemKey: itemKeyHomeM),
                  BottomNavButton(
                      newContext: context,
                      label: 'About',
                      iconName: "user.svg",
                      itemKey: itemKeyAboutM),
                  BottomNavButton(
                      newContext: context,
                      label: 'Skills',
                      iconName: 'skills.svg',
                      itemKey: itemKeySkills),
                  BottomNavButton(
                      newContext: context,
                      label: 'Services',
                      iconName: "bag.svg",
                      itemKey: itemKeyServices),
                ])),

        //
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.clear)),
        ),
      ],
    );
  }

  //
  Widget myAppBar(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: 12, horizontal: MediaQuery.of(context).size.width * .1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //logo
          logo(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(children: [
              NavButton(label: 'Home', itemKey: itemKeyHome),
              NavButton(label: 'About', itemKey: itemKeyAbout),
              NavButton(label: 'Skills', itemKey: itemKeySkills),
              NavButton(label: 'Services', itemKey: itemKeyServices),
            ]),
          )
        ],
      ),
    );
  }
}

// navButton
class NavButton extends StatelessWidget {
  final String label;
  final GlobalKey itemKey;

  const NavButton({Key? key, required this.label, required this.itemKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () async {
          final context = itemKey.currentContext!;

          await Scrollable.ensureVisible(context,
              duration: const Duration(seconds: 1));
        },
        child: Text(
          label,
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500),
        ));
  }
}

// BottomNavButton
class BottomNavButton extends StatelessWidget {
  final BuildContext newContext;
  final String label;
  final String iconName;
  final GlobalKey itemKey;
  const BottomNavButton({
    Key? key,
    required this.newContext,
    required this.label,
    required this.iconName,
    required this.itemKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        Navigator.of(newContext).pop();

        final context = itemKey.currentContext!;

        await Scrollable.ensureVisible(context,
            duration: const Duration(seconds: 1));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svgIcon(iconName: iconName.toString()),
          const SizedBox(height: 8),
          Text(label.toString()),
        ],
      ),
    );
  }
}
