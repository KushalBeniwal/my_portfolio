import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        toolbarHeight: 130,
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 350,
        leading: Center(
          child: Text("Kushal",
          textScaleFactor: 3.5, style: GoogleFonts.seaweedScript()),
        ),
        actions: <Widget>[
          Center(
            child: Center(
              child: Icon(
                Icons.dehaze,
                size: 50,
                ),
            ),
          ),
          Padding(padding: EdgeInsets.all(60)),
        ],
      ),
    );
  }
}
