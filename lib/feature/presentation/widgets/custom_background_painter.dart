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
class WalletBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    // Gradient Background (Upper Part)
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height );
    paint.shader = LinearGradient(
      colors: [Color(0xFF1E917D), Color(0xFF3DBDA7)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).createShader(rect);

    canvas.drawRect(rect, paint);

    // White Curved Background (Bottom Part)
    Paint whitePaint = Paint()..color = Colors.white;
    Path path = Path();

    path.moveTo(0, size.height * 0.8);
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 1.2, size.width, size.height * 0.8);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, whitePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
