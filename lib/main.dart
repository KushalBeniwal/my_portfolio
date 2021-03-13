import 'package:flutter/material.dart';
import 'package:my_portfolio/landing.dart';
import 'package:my_portfolio/about_me.dart';
import 'package:my_portfolio/education.dart';
import 'package:my_portfolio/achievements.dart';
import 'package:my_portfolio/skills.dart';
import 'package:my_portfolio/contact.dart';
import 'package:my_portfolio/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Startup Name Generator",
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            LandingPage(),
            AboutMe(),
            Education(),
            Achievements(),
            Skills(),
            Contact(),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
