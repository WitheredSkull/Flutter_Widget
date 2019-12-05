import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个提供了画布的小部件，可以通过画布画笔自定义样式的部件
    ///A widget that provides a canvas on which to draw during the paint phase.
    return CustomPaint(
      ///绘制背景(需要自定义继承CustomPainter)
      painter: Painter(),

      ///绘制前景
//      foregroundPainter: ,
      ///设置部件大小
      size: Size(100, 100),

      ///是否是复杂的
      isComplex: false,

      ///是否将会改变
      willChange: false,
    );
  }
}

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.isAntiAlias = true;
    paint.color = Colors.deepPurple;
    paint.strokeWidth = 2;
    paint.style = PaintingStyle.stroke;
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint);

    paint.style = PaintingStyle.fill;
    canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        0,
        2,
        true,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
