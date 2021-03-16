import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 700,
        color: Colors.blueGrey.shade50,
        // child: Stack(children: <Widget>[
        //   CustomPaint(
        //     size: Size.infinite,
        //     painter: CurvePainter1(),
        //   ),
        //   // CustomPaint(
          //   size: Size.infinite,
          //   painter: CurvePainter2(),
          // ),
        // ])
    );
  }
}

// class CurvePainter1 extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Colors.blue;
//     paint.style = PaintingStyle.fill;
//     paint.strokeWidth = 2.0;

//     var path = Path();

//     final _width = size.width;
//     final _height = size.height;

//     path.moveTo(_width, _height * 0.7);
//     path.quadraticBezierTo(_width * 0.85, _height * 0.83,
//         _width * 0.75, _height * 0.8);
//     path.quadraticBezierTo(_width * 0.6, _height * 0.75,
//         _width * 0.5, _height * 0.87);
//     path.quadraticBezierTo(_width * 0.39, _height * 0.95,
//         _width * 0.27, _height * 0.90);
//     path.quadraticBezierTo(_width * 0.15, _height * 0.93,
//         0, _height);
//     path.lineTo(_width, _height);
//     path.lineTo(_width, _height * 0.7);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class CurvePainter2 extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Colors.lightBlue.shade50;
//     paint.style = PaintingStyle.fill;
//     paint.strokeWidth = 2.0;

//     var path = Path();

//     path.moveTo(0, size.height * 0.9167);
//     path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
//         size.width * 0.5, size.height * 0.9167);
//     path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
//         size.width * 1.0, size.height * 0.9167);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
