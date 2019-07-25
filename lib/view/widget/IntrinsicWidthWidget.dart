import 'package:flutter/material.dart';

class IntrinsicWidthWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * 它可以根据设置的宽调整子部件的大小
     * 不过这个东西怎么用我也不理解，官方文档是说用来控制无限增长的宽高，我也很懵逼
     */
    ///A widget that sizes its child to the child's intrinsic width.
    return IntrinsicWidth(
      ///步长
      stepWidth: 200,
      stepHeight: 50,
      child: Container(
        color: Colors.lightBlue,
        child: Text("IntrinsicWidth",style: TextStyle(fontSize: 20,color: Colors.white),),
      ),
    );
  }
}
