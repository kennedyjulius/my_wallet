import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_wallet_app/widgets/data.dart';

class PieChart extends StatelessWidget {
  const PieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primaryColor,
          boxShadow: customShadow,
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                foregroundPainter: PieChartPainter(),
                child: Container(),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: customShadow,
                  color: primaryColor,
                ),
                child: Center(
                  child: Text(
                    " \$1284",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });

    var startRadian = -pi / 2;

    for (int i = 0; i < expenses.length; i++) {
      var currentExpense = expenses[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;

      var paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 50
        ..color = pieColors[i];

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );

      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
