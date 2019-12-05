import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Text('0' * 10000),
        Center(
          child: ClipRect(  // <-- clips to the 200x200 [Container] below
            ///一个高斯模糊的滤镜，可以让背景高斯模糊
            ///A widget that applies a filter to the existing painted content and then paints child.
            child: BackdropFilter(
              ///滤镜
              filter: ImageFilter.blur(
                ///高斯模糊算法，这里的xy有应该是取当前点横轴纵轴5个像素来算出当前点的rgb
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              ///展示在滤镜之上的widget
              child: Container(
                alignment: Alignment.center,
                width: 200.0,
                height: 200.0,
                child: Text('Hello World'),
              ),
            ),
          ),
        ),
      ],
    );
  }

}