import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogWidget {
  static showCupertinoAlertDialog1(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          ///一个IOS风格的警报弹窗
          ///An iOS-style alert dialog.
          return CupertinoAlertDialog(
            ///标题
            title: Text("Title"),
            ///内容
            content: Text("Content"),
            ///底下栏的动作选项
            actions: <Widget>[
              ///底下栏的动作
              CupertinoDialogAction(
                ///显示的部件
                child: Text("Cancel"),
                ///点击后的事件
                onPressed: () {
                  Navigator.of(context).pop();
                },
                ///是否是默认的事件
                isDefaultAction: true,
                ///是否是毁灭性的事件（红色样式）
                isDestructiveAction: true,
              ),
              CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
            ///滑动控制器
            scrollController: ScrollController(),
            ///底部动作的滑动控制器
            actionScrollController: ScrollController(),
          );
        });
  }
}
