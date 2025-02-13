import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackgroundPaainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..shader = LinearGradient(colors: [
      Colors.teal.shade400,Colors.teal.shade700
    ],begin: Alignment.topLeft,end: Alignment.bottomRight).createShader(Rect.fromLTWH(0, 0, size.width, size.height));
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width /2, size.height + 50, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}