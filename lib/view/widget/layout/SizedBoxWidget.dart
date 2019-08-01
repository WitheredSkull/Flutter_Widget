import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个可以指定宽高的部件,设置好宽高后可以强制子部件的大小，如果没有设置会跟随子部件扩容
    ///A box with a specified size. If given a child, this widget forces its child to have a specific width and/or height (assuming values are permitted by this widget's parent). If either the width or height is null, this widget will size itself to match the child's size in that dimension.
    return SizedBox(
      ///指定Box宽度
      width: 100,

      ///指定Box高度
      height: 100,

      ///子部件
      child: Material(
        color: Colors.white,
        child: Text(
          "SizedBox\nwidth:100\nheight:100",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
