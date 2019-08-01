import 'package:flutter/material.dart';

class SizedOverflowBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///可以溢出父部件，size设置好的大小可以被子部件溢出，这是SizedBox和OverflowBox的结合体
    ///A widget that is a specific size but passes its original constraints through to its child, which may then overflow.
    return SizedOverflowBox(
      ///设置部件大小
      size: Size(120, 150),

      ///设置部分溢出的反方向（如果是top则会往bottom方向溢出，如果是bottom则会往top方向溢出，center则是往上下左右一起溢出）
      alignment: Alignment.center,
      child: Container(
        width: 110,
        height: 160,
        color: Colors.lightBlue,
        child: Text(
          "SizedOverflowBox\n溢出盒\nSize(120,150)\n子部件宽高\n110,160\n(子部件高度溢出10)",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
