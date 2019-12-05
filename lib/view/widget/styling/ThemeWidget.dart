import 'package:flutter/material.dart';

class ThemeWidget extends StatelessWidget {
  final List<Map<String, dynamic>> list = [];

  ///将主题应用于后代小部件。主题描述应用程序的颜色和排版选择。
  ///Applies a theme to descendant widgets. A theme describes the colors and typographic choices of an application.
  @override
  Widget build(BuildContext context) {
    return Text(
      "如果你想获取主题的文字大小可以这么做"
      "\nTextStyle(fontSize: Theme.of(context).textTheme.body1.fontSize)"
      "\n具体在Theme.of(context)中，你可以获取你想要的主题的任何数据，注意传入的context必须要是同一个MaterialApp的上下文"
      "\n如果想设置Theme，请在你定义的MaterialApp中设置theme参数即可",
      style: TextStyle(fontSize: Theme.of(context).textTheme.body1.fontSize),
      textAlign: TextAlign.center,
      strutStyle: StrutStyle(height: 1.6),
    );
  }
}
