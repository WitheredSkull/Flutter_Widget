import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///此部件可以同时将不同风格的文字组成一段文本
    ///The RichText widget displays text that uses multiple different styles.
    /// The text to display is described using a tree of TextSpan objects,
    /// each of which has an associated style that is used for that subtree.
    /// The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints.
    return RichText(

        ///设置文字对齐方式
        textAlign: TextAlign.center,

        ///设置文字方向
        textDirection: TextDirection.ltr,

        ///是否自动换行（英语建议直接关闭）
        softWrap: true,

        ///设置文字超出样式
        overflow: TextOverflow.ellipsis,

        ///文字缩放因子
        textScaleFactor: 1.0,

        ///最大行数
        maxLines: 5,

        ///设置语言
        locale: Locale("zh"),

        ///支柱风格
        //strutStyle: StrutStyle(),
        ///TextWidthBasis.longestLine设置文本宽度为最长，TextWidthBasis.parent文本宽度基于父部件宽度
        textWidthBasis: TextWidthBasis.parent,

        ///设置TextSpan，当你想要展示一段不一样的文字的时候用TextSpan拼接起来即可
        text: TextSpan(
            text: "RichText:\n",
            style: TextStyle(color: Colors.grey),
            children: <TextSpan>[
              TextSpan(
                  text: "TextSpan:Colors.lightBlue\n",
                  style: TextStyle(color: Colors.lightBlue)),
              TextSpan(
                  text: "TextSpan:Colors.red\n",
                  style: TextStyle(color: Colors.red)),
              TextSpan(
                  text: "TextSpan:Colors.deepPurpleAccent\n",
                  style: TextStyle(color: Colors.deepPurpleAccent)),
            ]));
  }
}
