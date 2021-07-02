import 'package:flutter/material.dart';

import 'utils/avatar.dart';
import 'utils/greeting.dart';
import 'utils/social_links.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 600,
      margin: EdgeInsets.only(top: 200, left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Avatar(),
          Padding(padding: EdgeInsets.all((_width > 1200) ? 150 : 50)),
          Info(),
        ],
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Greeting(),
          SocialLinks(),
        ],
      ),
    );
  }
}
