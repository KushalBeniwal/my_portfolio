import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/social_link_img.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height,
      margin: EdgeInsets.only(left: _width / 10, right: _width / 10),
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.redAccent,
            height: _height,
            width: (_width * 5) / 10,
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(_height / 12)),
                Container(
                  height: _height / 1.5,
                  width: (_width * 5) / 10,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.amber,
                        height: _height / 10,
                        width: (_width) / 10,
                        margin: EdgeInsets.only(
                            right: _width / 20),
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text('Hola!',
                                style: GoogleFonts.seaweedScript())),
                      ),
                      Container(
                        color: Colors.cyanAccent,
                        height: _height / 5,
                        width: (_width * 4) / 10,
                        margin: EdgeInsets.only(
                            right: (_width * 5) / 10 - (_width * 4) / 10),
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                                'My name is Kushal. I am a second year undergraduate\nfrom India. ' +
                                    'I love exploring new technologies and\nI am always up for new experiences and opportunities.')),
                      ),
                      Container(
                        color: Colors.tealAccent,
                        height: _height / 10,
                        width: (_width * 1) / 10,
                        margin: EdgeInsets.only(
                            right: (_width * 5) / 10 - (_width * 1) / 10),
                        child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text('Pronouns: she/her')),
                      ),
                      Container(
                        color: Colors.blueGrey,
                        height: _height / 10,
                        width: (_width * 2) / 10,
                        margin: EdgeInsets.only(
                            right: (_width * 5) / 10 - (_width * 2) / 10),
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              SocialLinkImage(
                                  img:
                                      'https://github.com/KushalBeniwal/images/raw/main/email.png',
                                  url: 'https://flutter.dev'),
                              Padding(padding: EdgeInsets.all(10)),
                              SocialLinkImage(
                                  img:
                                      'https://github.com/KushalBeniwal/images/raw/main/linkedin.png',
                                  url: 'https://flutter.dev'),
                              Padding(padding: EdgeInsets.all(10)),
                              SocialLinkImage(
                                  img:
                                      'https://github.com/KushalBeniwal/images/raw/main/github.png',
                                  url: 'https://flutter.dev'),
                              Padding(padding: EdgeInsets.all(10)),
                              SocialLinkImage(
                                  img:
                                      'https://github.com/KushalBeniwal/images/raw/main/twitter.png',
                                  url: 'https://flutter.dev'),
                            ],
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(_height / 12)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: _width / 10)),
          Container(
            color: Colors.yellow,
            height: _height,
            width: _width / 5,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/my_photo1.png'),
                ),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
