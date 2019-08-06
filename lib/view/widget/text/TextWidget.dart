import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  ///这个部件可以指定Child树中所有的TextView的Style，只需要实现构造参数的style即可
  ///（如果子部件自己实现了style则优先使用子部件的style）
  ///The text style to apply to descendant Text widgets without explicit style.
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      ///设置文字对齐
        textAlign: TextAlign.center,
        ///是否自动处理多出来的文字(条件允许下多出来的文字会自动换行)
        softWrap: false,
        ///设置文字超出布局之后的处理方式
        overflow: TextOverflow.ellipsis,
        ///设置最大行数
        maxLines: 1,
        ///TextWidthBasis.longestLine设置文本宽度为最长，TextWidthBasis.parent文本宽度基于父部件宽度
        textWidthBasis: TextWidthBasis.parent,
        ///设置文本样式（后面的child树都会根据这个style变化）
        style: TextStyle(
            color: Colors.lightBlue,
            backgroundColor: Colors.white,
            fontSize: 20,
            decoration: TextDecoration.lineThrough),
        ///设置子部件
        child: Text("DefaultTextStyle"));
  }
}
