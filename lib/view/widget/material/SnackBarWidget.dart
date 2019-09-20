import 'package:flutter/material.dart';

class SnackBarWidget {
  static showSnackBar(GlobalKey<ScaffoldState> key) {
    ///在底部显示的小横幅弹窗
    ///A lightweight message with an optional action which briefly displays at the bottom of the screen.
    key.currentState.showSnackBar(SnackBar(
      ///内容
      content: Text("SnackBar"),

      ///背景色
      backgroundColor: Colors.deepPurple.shade300,

      ///阴影高度
//    elevation: ,
      ///外形
//    shape: ,
      ///点击行为
      behavior: SnackBarBehavior.floating,

      ///动作按钮
      action: SnackBarAction(
          label: "点我",
          textColor: Colors.white,
          onPressed: () {
            print("什么都没有哦");
          }),

      ///持续时长
      duration: Duration(seconds: 1),

      ///动画
//      animation: ,
    ));
  }
}
