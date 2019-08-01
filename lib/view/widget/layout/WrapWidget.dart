import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///它在多个水平或垂直运行中显示其子部件(可以根据宽度高度自适应排列子控件)
    ///A widget that displays its children in multiple horizontal or vertical runs
    return Wrap(
      ///设置布局方向
      direction: Axis.horizontal,

      ///设置对齐方式
      alignment: WrapAlignment.start,

      ///布局方向上的间距
      spacing: 4,

      ///run的对齐方式。run可以理解为新的行或者列，如果是水平方向布局的话，run可以理解为新的一行。
      runAlignment: WrapAlignment.end,

      ///run的间距(类似交叉轴的间距)
      runSpacing: 8,

      ///交叉轴的方向
      crossAxisAlignment: WrapCrossAlignment.start,

      ///文本方向(Android开发者模式有类似功能)
      textDirection: TextDirection.ltr,

      ///排列方式，Axis.horizontal模式是从左到右,Axis.vertical模式是从上到下
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        getTextWidget("测试1(direction: Axis.horizontal)"),
        getTextWidget("测试2(alignment: WrapAlignment.start)"),
        getTextWidget("测试3(spacing: 4)"),
        getTextWidget("测试4(spacing: 4)"),
        getTextWidget("测试5(runAlignment: WrapAlignment.end)"),
        getTextWidget("测试6(runSpacing: 8)"),
        getTextWidget("测试7(crossAxisAlignment: WrapCrossAlignment.start)"),
        getTextWidget("测试7(textDirection: TextDirection.ltr)"),
        getTextWidget("测试8(verticalDirection: VerticalDirection.down)"),
      ],
    );
  }

  Widget getTextWidget(String content) => Container(
        padding: EdgeInsets.all(20),
        color: Colors.brown,
        child: Text(
          content,
          style: TextStyle(color: Colors.white),
        ),
      );
}
