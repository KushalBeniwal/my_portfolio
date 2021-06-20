import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        children: [
          SocialLinkImage(
              img: 'https://github.com/KushalBeniwal/images/raw/main/email.png',
              url: 'mailto:kbeniwal2305@gmail.com'),
          Padding(padding: EdgeInsets.all(10)),
          SocialLinkImage(
              img:
                  'https://github.com/KushalBeniwal/images/raw/main/linkedin.png',
              url: 'https://linkedin.com/in/KushalBeniwal'),
          Padding(padding: EdgeInsets.all(10)),
          SocialLinkImage(
              img:
                  'https://github.com/KushalBeniwal/images/raw/main/github.png',
              url: 'https://github.com/KushalBeniwal'),
          Padding(padding: EdgeInsets.all(10)),
          SocialLinkImage(
              img:
                  'https://github.com/KushalBeniwal/images/raw/main/twitter.png',
              url: 'https://twitter.com/__cielo_O'),
        ],
      ),
    );
  }
}

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
          child: Image.network(widget.img, width: 30, height: 25),
        ),
      ),
    ));
  }

  void _launchURL() async => await canLaunch(widget.url)
      ? await launch(widget.url)
      : throw 'Could not launch $widget.url';
}
