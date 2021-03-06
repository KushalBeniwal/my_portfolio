import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/my_photo1.png'),
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
