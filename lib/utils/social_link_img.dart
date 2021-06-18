import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinkImage extends StatefulWidget {
  final url;
  final img;
  const SocialLinkImage({Key? key, @required this.img, @required this.url})
      : super(key: key);

  @override
  _SocialLinkImageState createState() => _SocialLinkImageState();
}

class _SocialLinkImageState extends State<SocialLinkImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: InkWell(
      onTap: _launchURL,
      child: Container(
        child: ClipRRect(
          child: Image.network(widget.img,
              width: 30, height: 25),
        ),
      ),
    ));
  }

  void _launchURL() async =>
    await canLaunch(widget.url) ? await launch(widget.url) : throw 'Could not launch $widget.url';
}
