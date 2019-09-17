import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class NotificationListenerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///一个用于监听冒泡通知事件的部件
    ///A widget that listens for Notifications bubbling up the tree.
    return NotificationListenerWidgetState();
  }
}

class NotificationListenerWidgetState
    extends State<NotificationListenerWidget> {
  int length = 4;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      ///子部件
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          DefaultButton("点击删除Item", () {
            ListNotification().dispatch(context);
          }),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("NotificationListener$index"),
              );
            },
            itemCount: length,
          )
        ],
      ),

      ///监听的Callback，当有发送ListNotification().dispatch(context);事件时会被回调
      onNotification: (notification) {
        setState(() {
          --length;
        });
        return true;
      },
    );
  }
}

class ListNotification extends Notification {}
