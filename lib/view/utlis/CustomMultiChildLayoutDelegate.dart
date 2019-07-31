import 'package:flutter/cupertino.dart';

class CustomMultiChildLayoutDelegate extends MultiChildLayoutDelegate {
  static final String id1 = "id1";
  static final String id2 = "id2";

  @override
  void performLayout(Size size) {
    BoxConstraints constraints = BoxConstraints(maxWidth: size.width);
    Size id1Size = layoutChild(id1, constraints);
    positionChild(id1, Offset(size.width - id1Size.width, 0));
    layoutChild(id2, constraints);
    positionChild(id2, Offset(0, id1Size.height + 20));
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return super.getSize(constraints);
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    // TODO: implement shouldRelayout
    return oldDelegate != this;
  }
}
