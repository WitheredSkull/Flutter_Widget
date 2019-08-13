import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///展示Icon
    return Icon(
      ///必须参数，可以自己整一个，也可以从MaterialDesign的Icons中选取一个
        Icons.accessibility_new,
      ///Icon大小（宽高同等）
      size: 100,
      ///主色调
      color: Colors.cyan,
      ///语义标签，需要打开无障碍才有用，基本没啥大用
      semanticLabel: "欢迎",
      ///文字方向
      textDirection: TextDirection.ltr,
    );
  }

}