import 'package:flutter/material.dart';

import 'utils/avatar.dart';
import 'utils/greeting.dart';

import 'utils/social_links.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height,
      margin: EdgeInsets.only(left: _width / 7, right: _width / 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Avatar(),
          Container(
            height: 210,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Greeting(),
                SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
