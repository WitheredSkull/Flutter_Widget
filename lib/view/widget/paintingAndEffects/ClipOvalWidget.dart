import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ClipOvalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个可以把子部件剪辑成椭圆形的小部件
    ///A widget that clips its child using an oval.
    return ClipOval(
      ///如果clipper为Null则是椭圆剪裁
//      clipper:  ,
      ///剪辑行为
      clipBehavior: Clip.antiAlias,

      ///需要剪辑的子部件
      child: Image.asset(
        "assets/images/icon/flutter_widget.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
