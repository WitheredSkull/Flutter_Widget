import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个IOS样式的按钮
    ///An iOS-style button.
    return CupertinoButton(
      ///子部件
      child: Text("CupertinoButton"),
      ///点击事件
      onPressed: () {
        print("点击：CupertinoButton");
      },
      ///内边距
      padding: EdgeInsets.all(10),
      ///按钮颜色
      color: CupertinoColors.activeBlue,
      ///禁用时的颜色
      disabledColor: CupertinoColors.quaternarySystemFill,
      ///最小的按钮大小
      minSize: 44.0,
      ///按下去的透明度
      pressedOpacity: 0.8,
      ///按钮圆角
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
    );
  }
}
