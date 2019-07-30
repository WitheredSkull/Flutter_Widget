import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///可以扩充Row,Column,Flex的剩余空间，但是只能使用在这三个之中，并且只能是StatelessWidgets或者StatefulWidgets的部件才能使用
    /**A widget that expands a child of a Row, Column, or Flex.
     * An Expanded widget must be a descendant of a Row, Column, or Flex, and the path from the Expanded widget to its enclosing Row, Column, or Flex must contain only StatelessWidgets or StatefulWidgets (not other kinds of widgets, like RenderObjectWidgets).
     */
    return Expanded(

      /**当默认值为1时会撑开布局的主轴剩余空间，
       * 比如这里是一个Row，前面两个部件总共占用200宽度，那屏幕剩下来的所有宽度都会被Expanded占据
       * 如果设置成其他的值则需要Row里面有多个Expanded,用flex弹性伸缩
       */
        flex: 2,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          color: Colors.cyan,
          child: Text(
            "flex: 2",
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
