import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///可以自由约束宽高的部件
    ///A convenience widget that combines common painting, positioning, and sizing widgets.
    return ConstrainedBox(
      ///限制条件，比如我现在限制了他的最大大小为宽200，高150，但是的子部件宽高相等
      ///实际展示出来将的会是ConstrainedBox限制的大小，不会去管子部件超出的大小
      constraints: BoxConstraints(maxWidth: 200, maxHeight: 150),
      child: Container(
        color: Colors.lightBlue,
        width: 300,
        height: 300,
        alignment: Alignment.center,
        child: Text(
          "maxWidth: 200, maxHeight: 150",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
