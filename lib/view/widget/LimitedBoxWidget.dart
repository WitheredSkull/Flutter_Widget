import 'package:flutter/material.dart';

class LimitedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /**可以控制子部件的最大宽高,如果这个小部件自己的宽度高度是不受限制的，
     * 则会扩展到最大宽高，但是高度无限时会给部件设置一个指定的高度
     */
    ///A box that limits its size only when it's unconstrained.
    return LimitedBox(
      ///限制最大宽度
      maxWidth: 150,
      ///限制最大高度
      maxHeight: 200,
      ///子部件
      child: Container(
        width: 150,
        color: Colors.white,
        alignment: Alignment.center,
        child: Text("LimitedBoxWidget"),),
    );
  }
}
