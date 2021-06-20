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
          Container(
            child: Text(
                "I am a second year undergraduate from India. " +
                "I am an open source enthusiast with a passion to give back to the community. " +
                "I love exploring new technologies and I am always up for new experiences and opportunities.",
                style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
