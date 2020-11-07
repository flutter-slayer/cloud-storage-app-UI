import 'package:flutter/material.dart';

class BNBCustomPainter extends CustomPainter {
  final Color bgColor;
  BNBCustomPainter({this.bgColor});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()..color = bgColor;
    //..shader = Shader.;
    //..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(
        size.width * 0, size.height * 0, size.width * 0.25, size.height * 0);
    path.quadraticBezierTo(size.width * 0.4, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(10), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.75, 0);
    path.quadraticBezierTo(size.width, size.height * 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    //path.lineTo(0, 10);
    canvas.drawShadow(path, Colors.black, 6, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
