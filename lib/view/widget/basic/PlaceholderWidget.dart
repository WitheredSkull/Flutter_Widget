import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///占位符,给未来可能添加的控件留下位置
    ///A widget that draws a box that represents where other widgets will one day be added.
    return Placeholder(
      ///设置占位符线条颜色
      color: Colors.deepPurpleAccent,
      ///设置线条宽度
      strokeWidth: 1.0,
      ///设置宽度
      fallbackWidth: 200,
      ///设置高度
      fallbackHeight: 200,
    );
  }
}
