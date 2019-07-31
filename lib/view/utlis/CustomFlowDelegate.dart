import 'package:flutter/cupertino.dart';

class CustomFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 50;
    double y = 50;
    for (int i = 0; i < context.childCount; i++) {
      double w = context.getChildSize(i).width + x;
      double h = context.getChildSize(i).height + y;
      print("运行次数${(100 * i).toDouble()}");
      context.paintChild(i,
          transform: Matrix4.translationValues((100 * i).toDouble(), 0, 0.0));
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return Size(100, 100);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
