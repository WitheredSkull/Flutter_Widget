import 'dart:ui';

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个展示文字的部件
    ///A run of text with a single style.
    return Text(
      ///想要展示的文字
      "Text",

      ///文本样式
      style: TextStyle(
        ///继承Widget树最近的父TextStyle风格(例如父部件是DefaultText)
        inherit: true,
        ///设置文字颜色
        color: Colors.lightBlue,
        ///设置背景色
        backgroundColor: Colors.white,
        ///设置字体大小
        fontSize: 20,

        ///字体权重
        fontWeight: FontWeight.bold,

        ///字体样式
        fontStyle: FontStyle.italic,

        ///字符间距
        letterSpacing: 1.0,

        ///文字间距
        wordSpacing: 1.0,

        ///基线对齐的类型：TextBaseline.alphabetic(按照字母),TextBaseline.ideographic(按照文字)
        textBaseline: TextBaseline.ideographic,

        ///高度（应该是根据文字高度倍数来的）
        height: 2,

        ///多语言
        locale: Locale("zh"),

        ///设置前景(不能和color同时使用)
//        foreground: _foreground(),

        ///设置背景(不能和backgroundColor同时使用)
//        background: Paint(),

        ///设置文字阴影
//        shadows: <Shadow>[
//          Shadow(color: Colors.lightBlue, offset: Offset(0, 1), blurRadius: 4)
//        ],

        ///字体功能(不会用，一脸懵逼)
//        fontFeatures: <FontFeature>[FontFeature("123",)],
        ///装饰
        decoration: TextDecoration.underline,

        ///装饰的颜色
        decorationColor: Colors.redAccent,

        ///装饰的样式
        decorationStyle: TextDecorationStyle.wavy,

        ///装饰的厚度
        decorationThickness: 1.0,
        debugLabel: "展示Debug",

        ///字体
        //fontFamily:"黑体",
        ///字体回退
        //fontFamilyFallback:;
        ///字体包
        //package: "",
      ),

      ///支柱风格
//      strutStyle: StrutStyle(),

      ///文本对齐方式
      textAlign: TextAlign.center,
      ///文本对齐方向
      textDirection: TextDirection.ltr,
      ///多语言
      locale: Locale("zh"),
      ///自动换行(如果是全英语建议关闭)
      softWrap: true,
      ///文本超出后结尾的展示方式
      overflow: TextOverflow.ellipsis,
      ///文字缩放因子
      textScaleFactor: 1.0,
      ///最大行数
      maxLines: 50,
      ///语义标签
      semanticsLabel: "firstSemantics",
      ///TextWidthBasis.longestLine设置文本宽度为最长，TextWidthBasis.parent文本宽度基于父部件宽度
      textWidthBasis: TextWidthBasis.parent,
    );
  }

  _foreground() {
    var paint = Paint();
    paint.color = Colors.greenAccent;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1.0;
    return paint;
  }
}
