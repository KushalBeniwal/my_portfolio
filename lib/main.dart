import 'package:flutter/material.dart';
import 'package:my_portfolio/top_bar.dart';
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
      title: "KushalBeniwal",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MouseRegion(
        child:  Portfolio(),
      ),
    );
  }
}

class Portfolio extends StatefulWidget {
  @override
  _PortfolioState createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            TopBar(),
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
