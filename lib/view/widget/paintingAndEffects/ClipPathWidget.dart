import 'package:flutter/material.dart';

class ClipPathWidget extends StatelessWidget {
  double width = 100, height = 100;

  @override
  Widget build(BuildContext context) {
    ///一个可以把子部件剪辑成自定义剪裁部分的小部件
    ///A widget that clips its child using a path.
    return ClipPath(
      ///自定义的剪裁部分的Path
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

class CenterRectangleClip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 4, size.height / 4);
    path.lineTo(size.width / 2 + size.width / 4, size.height / 4);
    path.lineTo(
        size.width / 2 + size.width / 4, size.height / 2 + size.height / 4);
    path.lineTo(size.width / 4, size.height / 2 + size.height / 4);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
