import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      height: _height,
      width: _width,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: _height * 0.2,
            left: _width * 0.25,
            child: Container(
              color: Colors.blueGrey.shade50,
              height: _height * 0.6,
              width: _width * 0.4,
              padding: EdgeInsets.only(
                right: _width * 0.4 * 0.2,
                top: _height * 0.6 * 0.25,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    // color: Colors.amber, // remove
                    child: Text("Hola!  ",
                        textScaleFactor: 4, 
                        style: GoogleFonts.seaweedScript()),
                  ),
                  Container(
                    // color: Colors.deepPurple,
                    padding: EdgeInsets.only(
                      left: 35,
                      right: 50,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Center(
                      child: Text(
                        "My name is Kushal. I am a second year undergraduate from India. " +
                        "I love exploring new technologies and I am always up for new experiences and opportunities.\n" +
                        "Pronouns: she/her",
                        textScaleFactor: 1.2,
                        style: GoogleFonts.notoSerif()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: _height * 0.3,
            left: _width * 0.55,
            child: Container(
              padding: EdgeInsets.only(),
              height: _height * 0.4,
              width: _width * 0.2,
              child: Image.asset("my_photo1.png"),
            ),
          ),
        ],
      ),
    );
  }
}
