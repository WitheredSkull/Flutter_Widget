import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///可以操作子部件进行变换
    ///A widget that applies a transformation before painting its child.
    return Transform(
      ///四维矩阵,可以通过Matrix4控制你的变换
      transform: Matrix4.rotationZ(-5),

      ///变换起始点
      origin: Offset(0, 10),

      ///子部件对齐方式
      alignment: Alignment.center,

      ///将点击事件随矩阵的变换而变换
      transformHitTests: true,
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 150,
        child: Text(
          "Transform\n延Z轴变换\n起始点\nOffset(0, 25)\n变化值\nMatrix4.rotationZ(-5)",
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.lightBlue,
      ),
    );
  }
}
