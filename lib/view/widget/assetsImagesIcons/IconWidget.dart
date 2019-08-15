import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个专门展示Icon的部件
    ///A Material Design icon.
    return Icon(
      ///可以从Material Design的Icons中挑选，当然也可以自己绘制生成
      Icons.watch,
      ///Icon的大小
      size: 48,
      ///Icon的颜色
      color: Colors.purple,
      ///语义标签
      semanticLabel: "Icon",
      ///文本方向
      textDirection: TextDirection.ltr,
    );
  }
}
