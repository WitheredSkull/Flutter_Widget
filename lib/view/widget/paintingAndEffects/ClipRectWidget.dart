import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  double width = 100, height = 100;

  @override
  Widget build(BuildContext context) {
    ///一个可以把子部件剪辑成自定义剪裁部分的小部件
    ///A widget that clips its child using a path.
    return ClipRect(
      ///自定义的剪裁部分的矩形范围
      clipper: CenterRectangleClip(),

      ///剪辑行为
      clipBehavior: Clip.antiAlias,

      ///需要剪辑的子部件
      child: Image.asset(
        "assets/images/icon/flutter_widget.png",
        fit: BoxFit.fill,
        width: width,
        height: height,
      ),
    );
  }
}

class CenterRectangleClip extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    var rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.height / 3);
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
