import 'dart:math';
import 'package:flutter/material.dart';

class BrazilFlagPainter extends CustomPainter {
  static const Color green = Color(0xFF009739);
  static const Color yellow = Color(0xFFFEDF00);
  static const Color blue = Color(0xFF002776);
  static const Color white = Color(0xFFFFFFFF);

  @override
  void paint(Canvas canvas, Size size) {
    final greenPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = green;
    final yellowPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = yellow;
    final bluePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = blue;
    final whitePaint = Paint()
      ..style = PaintingStyle.fill
      ..color = white;

    final width = size.width;
    final height = size.height;
    final centerX = width / 2;
    final centerY = height / 2;

    final greenRect = Rect.fromLTWH(0, 0, width, height);
    canvas.drawRect(greenRect, greenPaint);

    final diamondPath = Path()
      ..moveTo(centerX, height * 0.1) // Topo
      ..lineTo(width * 0.95, centerY) // Direita
      ..lineTo(centerX, height * 0.9) // Baixo
      ..lineTo(width * 0.05, centerY) // Esquerda
      ..close();
    canvas.drawPath(diamondPath, yellowPaint);

    final radius = height * 0.3;
    canvas.drawCircle(Offset(centerX, centerY), radius, bluePaint);

    final bandHeight = radius * 0.2;
    final angle = -0.15;

    canvas.save();
    canvas.translate(centerX, centerY);
    canvas.rotate(angle);

    final bandRect = Rect.fromLTWH(-radius * 1.1, -bandHeight / 2, radius * 2.2, bandHeight);

    final rrect = RRect.fromRectAndRadius(bandRect, Radius.circular(bandHeight / 2));
    canvas.drawRRect(rrect, whitePaint);

    final textPainter = TextPainter(
      text: TextSpan(
        text: 'ORDEM E PROGRESSO',
        style: TextStyle(color: green, fontSize: radius * 0.12, fontWeight: FontWeight.bold, letterSpacing: 0.5),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(canvas, Offset(-textPainter.width / 2, -textPainter.height / 2));

    canvas.restore();

    final starPaint = Paint()
      ..style = PaintingStyle.fill
      ..color = white;

    // Central star
    _drawStar(canvas, centerX, centerY - radius * 0.35, radius * 0.08, starPaint);

    // Stars around
    final stars = [
      Offset(centerX - radius * 0.3, centerY - radius * 0.5),
      Offset(centerX + radius * 0.2, centerY - radius * 0.6),
      Offset(centerX - radius * 0.5, centerY - radius * 0.2),
      Offset(centerX + radius * 0.5, centerY - radius * 0.15),
      Offset(centerX - radius * 0.4, centerY + radius * 0.3),
      Offset(centerX + radius * 0.3, centerY + radius * 0.4),
      Offset(centerX - radius * 0.15, centerY + radius * 0.55),
      Offset(centerX + radius * 0.1, centerY + radius * 0.6),
    ];

    for (final starPos in stars) {
      _drawStar(canvas, starPos.dx, starPos.dy, radius * 0.04, starPaint);
    }
  }

  void _drawStar(Canvas canvas, double x, double y, double size, Paint paint) {
    final path = Path();
    final outerRadius = size;
    final innerRadius = size * 0.4;
    const points = 5;

    for (int i = 0; i < points * 2; i++) {
      final radius = i.isEven ? outerRadius : innerRadius;
      final angle = (i * pi / points) - pi / 2;
      final px = x + radius * cos(angle);
      final py = y + radius * sin(angle);

      if (i == 0) {
        path.moveTo(px, py);
      } else {
        path.lineTo(px, py);
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => this != oldDelegate;
}
