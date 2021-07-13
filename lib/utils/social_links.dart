import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Tooltip(
            message: 'kbeniwal2305@gmail.com',
            child: SocialLinkIcon(
                icon: Icon(Icons.mail), url: 'mailto:kbeniwal2305@gmail.com'),
          ),
          Tooltip(
            message: 'KushalBeniwal',
            child: SocialLinkIcon(
                icon: FaIcon(FontAwesomeIcons.github),
                url: 'https://github.com/KushalBeniwal'),
          ),
          Tooltip(
            message: 'KushalBeniwal',
            child: SocialLinkIcon(
                icon: FaIcon(FontAwesomeIcons.linkedin),
                url: 'https://linkedin.com/in/KushalBeniwal'),
          ),
          Tooltip(
              message: '__cielo_O',
              child: SocialLinkIcon(
                  icon: FaIcon(FontAwesomeIcons.twitter),
                  url: 'https://twitter.com/__cielo_O')),
        ],
      ),
    );
  }
}

class SocialLinkIcon extends StatefulWidget {
  final url;
  final icon;
  const SocialLinkIcon({Key? key, @required this.icon, @required this.url})
      : super(key: key);

  @override
  _SocialLinkIconState createState() => _SocialLinkIconState();
}

class _SocialLinkIconState extends State<SocialLinkIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _launchURL,
      icon: widget.icon,
      focusColor: Colors.white,
      hoverColor: Colors.white,
      highlightColor: Colors.white,
      splashColor: Colors.white,
      disabledColor: Colors.grey,
    );
  }

  _launchURL() async {
    if (await canLaunch(widget.url)) {
      await launch(widget.url);
    } else {
      throw 'Could not launch $widget.url';
    }
  }
}
