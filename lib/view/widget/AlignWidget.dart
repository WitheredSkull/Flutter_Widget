import 'package:flutter/material.dart';
class AlignWidget extends StatelessWidget{
  @override
  ///调整子部件位置，根据子部件大小调整自身大小
  ///A widget that aligns its child within itself and optionally sizes itself based on the child's size.
  Widget build(BuildContext context) {
    return Align(
      ///子部件
      child: Text("Align"),
      ///对齐方式
      alignment: Alignment.topCenter,
      ///宽度缩放因子,当前2.0表示实际内容宽度的两倍,3.0就是3倍
      widthFactor: 2.0,
      ///高度缩放因子
      heightFactor: 3.0,
    );
  }

}