import 'package:flutter/material.dart';

class OverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///支持移除父部件
    ///A widget that imposes different constraints on its child than it gets from its parent, possibly allowing the child to overflow the parent.
    return OverflowBox(
      ///设置部分溢出的反方向（如果是top则会往bottom方向溢出，如果是bottom则会往top方向溢出，center则是往上下左右一起溢出）
      alignment: Alignment.center,

      ///最小宽度,如果设置的是最小宽度则宽度需要小于父控件宽度
      minWidth: 150,

      ///最大宽度，如果设置的是最大宽度则需要大于父控件宽度
//      maxWidth: 100,

      ///最小高度，同minWidth
//      minHeight: 200,

      ///最大高度，同maxWidth
      maxHeight: 210,
      child: Container(
        width: 0,
        alignment: Alignment.center,
        color: Colors.lightBlue,
        child: Text(
          "OverflowBox\n顶级父部件\nwidth:200,\nheight:200\n溢出盒\nminWidth:150,\nmaxHeight:210,\n子部件\nwidth:0,\nheight:null",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
