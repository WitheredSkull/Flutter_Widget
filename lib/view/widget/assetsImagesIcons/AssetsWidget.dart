import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AssetsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Asset bundles contain resources, such as images and strings, that can be used by an application. Access to these resources is asynchronous so that they can be transparently loaded over a network (e.g., from a NetworkAssetBundle) or from the local file system without blocking the application's user interface.
    return Image.asset(
      "assets/images/icon/flutter_widget.png",

      ///资产包
      //bundle: ,
      ///框架构建器(完全不需要手动构建，除非网络上有更好的图片加载器)
//      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
//        return;
//      },
      ///语义标签
      semanticLabel: "图片",

      ///从语义树排除（有专门针对语义树的内容，请在Basic页面最底部找寻）
      excludeFromSemantics: false,

      ///图片缩小比例
      scale: 2,

      ///部件宽度
      width: 100,

      ///部件高度
      height: 100,

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

      ///设置包
//      package: "",

      ///过滤器质量（肯定会影响代码效率）
      filterQuality: FilterQuality.high,
    );
  }
}
