import 'package:flutter/material.dart';

import '/pages/about/about_page.dart';
import '/pages/home/home_page.dart';
import '/widgets/logo.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
      ),
      home: const DashboardPage(),
    );
  }
}

// dashboard
class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo
              logo(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(children: [
                  navButton(buttonText: 'Home'),
                  navButton(buttonText: 'About'),
                  navButton(buttonText: 'Skills'),
                  navButton(buttonText: 'Services'),
                  navButton(buttonText: 'Portfolio'),
                ]),
              )
            ],
          ),
        ),
      ),

      //
      body: ListView(
        children: [
          // home page
          const HomePage(),

          // about
          const AboutMePage(),

          //footer
          Container(
            height: 200,
            color: Colors.black26,
            padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: MediaQuery.of(context).size.width * .1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //logo
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // icon
                        logo(),
                        const SizedBox(height: 8),
                        Text(
                          'App Developer',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),

                    //menu
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Service',
                          style: TextStyle(),
                        ),
                        Text(
                          'Portfolio',
                          style: TextStyle(),
                        ),
                        Text(
                          'Contact Me',
                          style: TextStyle(),
                        ),
                      ],
                    ),

                    //icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.facebook)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.facebook)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.facebook)),
                      ],
                    ),
                  ],
                ),
                const Text('© asifreyad.github.io. All right reserved')
              ],
            ),
          ),

          //skills
        ],
      ),
    );
  }
}

// navButton
Widget navButton({required String buttonText}) {
  return TextButton(
      onPressed: () {},
      child: Text(
        buttonText,
        style: TextStyle(color: Colors.deepPurpleAccent.shade200),
      ));
}
