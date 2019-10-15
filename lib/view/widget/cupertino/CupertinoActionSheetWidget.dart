import 'package:flutter/cupertino.dart';

class CupertinoActionSheetWidget {
  static showCupertinoActionSheet(BuildContext context) {
    ///CupertinoActionSheet需要承载在showCupertinoModalPopup中
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          ///IOS带动作的弹窗，在多个动作选项中选择一个
          ///An iOS-style modal bottom action sheet to choose an option among many.
          return CupertinoActionSheet(

              ///标题
              title: Text("Title"),

              ///内容
              message: Text("Message"),

              ///可选动作
              actions: <Widget>[
                ///单个动作(可选项)
                CupertinoActionSheetAction(
                  ///点击事件
                  onPressed: () {
                    print("点击：CupertinoActionSheetAction");
                  },

                  ///显示的子部件
                  child: Text("CupertinoActionSheetAction"),

                  ///是否是默认的动作
                  isDefaultAction: true,

                  ///是毁灭性的动作，设置为true会标红
                  isDestructiveAction: true,
                ),
                CupertinoActionSheetAction(
                    onPressed: () {
                      print("点击：CupertinoActionSheetAction2");
                    },
                    child: Text("CupertinoActionSheetAction2")),
              ],

              ///内容滑动控制器
              messageScrollController: ScrollController(),

              ///可选项滑动控制器
              actionScrollController: ScrollController(),

              ///取消按钮
              cancelButton: CupertinoButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  print("点击：cancelButton");
                },
                child: Text("Cancel"),
              ));
        });
  }
}
