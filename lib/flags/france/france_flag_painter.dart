import 'package:flutter/material.dart';

class FranceFlagPainter extends CustomPainter {
  static const Color blue = Color(0xFF0055A4);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFEF4135);

  @override
  void paint(Canvas canvas, Size size) {
    final whitePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = white;
    final bluePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = blue;
    final redPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = red;

    final divisionWidth = size.width / 3;

    final blueRect = Rect.fromLTWH(0, 0, divisionWidth, size.height);
    final whiteRect = Rect.fromLTWH(divisionWidth, 0, divisionWidth, size.height);
    final redRect = Rect.fromLTWH(divisionWidth * 2, 0, divisionWidth, size.height);

    canvas.drawRect(whiteRect, whitePaint);
    canvas.drawRect(blueRect, bluePaint);
    canvas.drawRect(redRect, redPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => this != oldDelegate;
}
