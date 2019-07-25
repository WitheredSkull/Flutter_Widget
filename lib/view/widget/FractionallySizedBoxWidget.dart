import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**这个部件可以将你的子部件自动调整到可用空间的宽高比例
        比如父部件可用空间100宽度，FractionallySizedBox的widthFactor设置0.5
        最后子布局展示的宽度为50*/
    ///A widget that sizes its child to a fraction of the total available space. For more details about the layout algorithm
    return FractionallySizedBox(
      ///对齐方式
      alignment: Alignment.centerLeft,

      ///宽度将按照父布局可用空间缩放
      widthFactor: 0.5,

      ///高度将按照父布局可用空间缩放
      heightFactor: 0.5,

      ///子部件
      child: Image.asset(
        "assets/images/icon/flutter_widget.png",
      ),
    );
  }
}
