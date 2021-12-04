// dashboard
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:portfolio/widgets/bottom_nav_modal_bottom_sheet.dart';
import 'package:portfolio/widgets/top_nav.dart';

import '/pages/about/about_page.dart';
import '/pages/home/home_page.dart';
import '/pages/service/service_page.dart';
import '/pages/skills/skills_page.dart';
import '/responsive.dart';
import '/widgets/footer.dart';
import '/widgets/logo.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          //top nav
          if (Responsive.isDesktop(context))
            TopNav(
              itemKeyHome: itemKeyHome,
              itemKeyAbout: itemKeyAbout,
              itemKeySkills: itemKeySkills,
              itemKeyServices: itemKeyServices,
            ),

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
                    Footer(itemKeyHome: itemKeyHome),

                    //skills
                  ],
                ),
              ),
            ),
          ),

          // bottom nav
          if (Responsive.isMobile(context))
            Column(
              children: [
                const Divider(
                  height: 1,
                  thickness: .5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //logo
                      GestureDetector(
                          onTap: () async {
                            final context = itemKeyHomeM.currentContext;

                            await Scrollable.ensureVisible(context!,
                                duration: const Duration(seconds: 1));
                          },
                          child: const Logo()),
                      IconButton(
                          onPressed: () {
                            showMaterialModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                constraints:
                                    const BoxConstraints(maxHeight: 260),
                                child: BottomNavModalBottomSheet(
                                    itemKeyHomeM: itemKeyHomeM,
                                    itemKeyAboutM: itemKeyAboutM,
                                    itemKeySkills: itemKeySkills,
                                    itemKeyServices: itemKeyServices),
                              ),
                            );
                          },
                          icon: const Icon(Icons.apps_outlined)),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
