import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Greeting extends StatefulWidget {
  const Greeting({Key? key}) : super(key: key);

  @override
  _GreetingState createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text("Hola! I am Kushal Beniwal (she/her)",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, height: 2.0)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "I am a second year undergraduate from India. I am an open source",
                style: TextStyle(fontSize: 16, letterSpacing: 0.27)),
              Text(
                "enthusiast with a passion to give back to the community. I love",
                style: TextStyle(fontSize: 16, letterSpacing: 0.7)),
              Text(
                "exploring new technologies and I am always up for new experiences",
                style: TextStyle(fontSize: 16, letterSpacing: 0.13)),
              Text(
                "and opportunities.",
                style: TextStyle(fontSize: 16)),
            ],
          ),
        ],
      ),
    );
  }
}
