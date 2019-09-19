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
  String tip = "滑动到顶部";

  @override
  Widget build(BuildContext context) {
    print("重新构建");
    return NotificationListener<ScrollNotification>(
      ///子部件
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            tip,
            style: TextStyle(fontSize: 24),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("NotificationListener$index"),
                );
              },
              itemCount: 8,
            ),
          )
        ],
      ),

      ///监听的Callback，当有发送ListNotification().dispatch(context);事件时会被回调
      onNotification: (ScrollNotification notification) {
        if (notification.metrics.extentAfter == 0.0) {
          tip = "滑动到底部";
        } else if (notification.metrics.extentBefore == 0.0) {
          tip = "滑动到顶部";
        } else {
          tip = "滑动在中间";
        }
        setState(() {

        });
        return true;
      },
    );
  }
}
