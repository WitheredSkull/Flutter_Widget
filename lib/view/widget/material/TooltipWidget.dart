import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///包裹一个部件，当长按那个部件时会展示 一个文本标签在界面上
    ///Tooltips provide text labels that help explain the function of a button or other user interface action. Wrap the button in a Tooltip widget to show a label when the widget long pressed (or when the user takes some other appropriate action).
    return Tooltip(
      ///显示的消息
      message: "长按显示的消息",

      ///高度
      height: 48,

      ///内边距
      padding: EdgeInsets.all(20),

      ///边距
      margin: EdgeInsets.all(20),

      ///垂直偏移
      verticalOffset: 10,

      ///喜欢下面
      preferBelow: false,

      ///是否包含在语义树种
      excludeFromSemantics: true,

      ///装饰
      decoration: BoxDecoration(color: Colors.black45),

      ///文字样式
      textStyle: TextStyle(color: Colors.white),

      ///长按后需要等待多久再进行展示
      waitDuration: null,

      ///在页面上持续展示多久
      showDuration: Duration(seconds: 2),

      ///子部件
      child: Text(
        "尝试长按我",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
