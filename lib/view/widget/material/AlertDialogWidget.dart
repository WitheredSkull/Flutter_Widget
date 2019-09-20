import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';

class AlertDialogWidget {
  static dynamic alertDialogContent = """Material主题的弹窗
  AlertDialog""";

  static showAlertDialog1(BuildContext context) {
    showDialog<void>(

        ///需要提供上下文
        context: context,

        ///是否可以通过点击Dialog外面关闭dialog
        barrierDismissible: false,

        ///构建弹窗界面
        builder: (context) {
          return AlertDialog(
            ///标题栏
            title: Text("标题栏"),

            ///标题内边距
            titlePadding: const EdgeInsets.all(10),

            ///标题文字样式
            titleTextStyle: TextStyle(color: AssetsColor.COLOR_PRIMARY),

            ///内容
            content: Text(alertDialogContent),

            ///内容内边距
            contentPadding: const EdgeInsets.all(24),

            ///内容文本样式
            contentTextStyle:
                TextStyle(backgroundColor: AssetsColor.COLOR_BACKGROUND_2),

            ///底下的确定取消等自定义的动作部件
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Cancel"),
              )
            ],

            ///背景颜色
            backgroundColor: Colors.white,

            ///阴影高度
//        elevation: ,
            ///语义标签
//        semanticLabel: ,
            ///外形
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          );
        });
  }
}
