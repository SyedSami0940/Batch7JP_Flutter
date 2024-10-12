import 'package:flutter/material.dart';
import 'package:fluttercls1/ludo.dart';

void main() {
  runApp(ChessApp());
}

class ChessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chess Board',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ChessBoard(),
      //home: LudoBoardPainter(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chess Board By S.Sami')),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: CustomPaint(
            painter: ChessBoardPainter(),
          ),
        ),
      ),
    );
  }
}

class ChessBoardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double tileSize = size.width / 8;

    // Draw the chessboard
    for (int row = 0; row < 8; row++) {
      for (int col = 0; col < 8; col++) {
        Paint paint = Paint()
          ..color = (row + col) % 2 == 0 ? Colors.white : Colors.black;
        canvas.drawRect(
          Rect.fromLTWH(col * tileSize, row * tileSize, tileSize, tileSize),
          paint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
