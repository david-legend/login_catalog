import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';

class DrawCircle extends CustomPainter {
  DrawCircle({
    @required this.radius,
    @required this.offset,
    @required this.color,
    this.elevation = Sizes.ELEVATION_8,
    this.transparentOccluder = true,
    this.shadowColor,
    this.hasShadow = false,
    this.shadowOffset = Sizes.SIZE_1,
  }) {
    _paint = Paint()
      ..color = color
      ..strokeWidth = 10.0
      ..style = PaintingStyle.fill;
  }

  final double radius;
  final Offset offset;
  final Color color;
  final double elevation;
  final bool transparentOccluder;
  final bool hasShadow;
  final Color shadowColor;
  final double shadowOffset;
  Paint _paint;

  @override
  void paint(Canvas canvas, Size size) {
    if (hasShadow) {
      Path oval = Path()
        ..addOval(
            Rect.fromCircle(center: offset, radius: radius + shadowOffset));

      canvas.drawShadow(oval, shadowColor ?? Colors.black.withOpacity(0.7),
          elevation, transparentOccluder);
    }

    canvas.drawCircle(offset, radius, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
