import 'package:flutter/material.dart';

class SimpleDialogWidget {
  static showSimpleDialog1(var context) {
    showDialog(

        ///上下文
        context: context,

        ///是否可以点击外部关闭
        barrierDismissible: true,

        ///构建界面
        builder: (context) {
          ///一个简单地Material风格的弹出框
          ///A simple material design dialog.
          return SimpleDialog(
            ///标题
            title: Text("SimpleDialog标题"),

            ///标题内边距
            titlePadding: EdgeInsets.all(24),

            ///内容，默认是Column模式
            children: <Widget>[
              Text(
                "啦啦啦啦",
                textAlign: TextAlign.center,
              ),
              Text(
                "德玛西亚",
                textAlign: TextAlign.center,
              ),
              Icon(Icons.arrow_downward),
              Text(
                "Duang~~~",
                textAlign: TextAlign.center,
              )
            ],

            ///内容内边距
            contentPadding: EdgeInsets.all(24),

            ///背景
            backgroundColor: Colors.white,

            ///阴影高度
            elevation: 10,

            ///语义标签
            semanticLabel: "语义",

            ///外形
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          );
        });
  }
}
