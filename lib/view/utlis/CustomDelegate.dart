import 'package:flutter/material.dart';

class CustomDelegate extends SingleChildLayoutDelegate {
  Size size;


  CustomDelegate(this.size);

  @override
  Size getSize(BoxConstraints constraints) {
    return size;
  }

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    var box = BoxConstraints.tight(size);
    return box;
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset.zero;
  }

  ///是否需要重新布局
  @override
  bool shouldRelayout(CustomDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}
