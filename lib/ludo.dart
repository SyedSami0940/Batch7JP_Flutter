import 'package:flutter/material.dart';

class LudoBoardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double squareSize = size.width / 15;

    // Define colors
    Color redColor = Colors.red;
    Color blueColor = Colors.blue;
    Color yellowColor = Colors.yellow;
    Color greenColor = Colors.green;

    // Draw the board sections
    Paint paint = Paint();

    // Draw Red section
    paint.color = redColor;
    canvas.drawRect(Rect.fromLTWH(0, 0, 5 * squareSize, 5 * squareSize), paint);

    // Draw Green section
    paint.color = greenColor;
    canvas.drawRect(
        Rect.fromLTWH(0, 10 * squareSize, 5 * squareSize, 5 * squareSize),
        paint);

    // Draw Blue section
    paint.color = blueColor;
    canvas.drawRect(
        Rect.fromLTWH(10 * squareSize, 0, 5 * squareSize, 5 * squareSize),
        paint);

    // Draw Yellow section
    paint.color = yellowColor;
    canvas.drawRect(
        Rect.fromLTWH(
            10 * squareSize, 10 * squareSize, 5 * squareSize, 5 * squareSize),
        paint);

    // Draw center area (home)
    paint.color = Colors.white;
    canvas.drawRect(
        Rect.fromLTWH(
            5 * squareSize, 5 * squareSize, 5 * squareSize, 5 * squareSize),
        paint);

    // Draw the borders or pathways if needed
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    // Draw pathways (optional)
    for (int i = 0; i < 15; i++) {
      canvas.drawLine(Offset(i * squareSize, 0),
          Offset(i * squareSize, size.height), paint);
      canvas.drawLine(
          Offset(0, i * squareSize), Offset(size.width, i * squareSize), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
