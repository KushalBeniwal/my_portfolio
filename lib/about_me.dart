import 'package:flutter/material.dart';

import 'utils/avatar.dart';
import 'utils/greeting.dart';
import 'utils/social_links.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({ Key? key }) : super(key: key);

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 550,
      margin: EdgeInsets.only(top: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Avatar(),
          Padding(padding: EdgeInsets.all(150)),
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
