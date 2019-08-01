import 'package:flutter/material.dart';
class CenterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///A widget that centers its child within itself.
    ///让内容居中展示的Widget，继承自Align,但是默认采用了this.alignment = Alignment.center，相当于Align不可操作alignment
    return Center(
      ///子部件
      child: Text("Center(居中)"),
      ///宽度缩放因子,当前2.0表示实际内容宽度的两倍,3.0就是3倍
      widthFactor: 2.0,
      ///高度缩放因子
      heightFactor: 3.0,
    );
  }

}