import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image(
      image: AssetImage("assets/images/icon/flutter_widget.png"),

      ///语义标签，需要打开无障碍才有用，基本没啥大用
      semanticLabel: "图片",

      ///从语义树排除（有专门针对语义树的内容，请在Basic页面最底部找寻）
      excludeFromSemantics: false,

      ///图片宽度
      width: 200,

      ///图片高度
      height: 200,

      ///图片颜色
      color: Colors.white,

      ///颜色混合模式
      colorBlendMode: BlendMode.dstIn,

      ///装配模式
      fit: BoxFit.contain,

      ///对齐方式
      alignment: Alignment.center,

      ///重复模式
      repeat: ImageRepeat.repeatX,

      ///中心部分(好像是用作九宫格切割)
//      centerSlice: Rect.fromCircle(center:Offset(100, 100),radius: 520,),

      ///匹配文本的方向
      matchTextDirection: false,

      ///无缝播放
      gaplessPlayback: false,

      ///过滤器质量（肯定会影响代码效率）
      filterQuality: FilterQuality.high,
    );
  }
}
