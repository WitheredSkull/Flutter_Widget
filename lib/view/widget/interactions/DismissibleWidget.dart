import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class DismissibleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DismissibleWidgetState();
  }
}

class DismissibleWidgetState extends State<DismissibleWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = "Dismissible$index 左划删除，右划查看";

        ///类似常见的拖动删除部件,可以在指定方向上拖动并展示隐藏在背后的部件
        ///A widget that can be dismissed by dragging in the indicated direction.
        return Dismissible(
          ///键(拖动删除之类的操作息息相关)
          key: Key(item),

          ///拖动之前的显示Widget
          child: Container(
            width: double.infinity,
            height: 40,
            child: Text(
              item,
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blueAccent,
            alignment: Alignment.center,
          ),

          ///第一种背后Widget（拖动Widget后展示在后面的Widget)
          background: Container(
            height: 50,
            color: Colors.blueAccent.withOpacity(0.8),
            child: Text(
              "View",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.centerLeft,
          ),

          ///第二种背后Widget
          secondaryBackground: Container(
            height: 50,
            color: Colors.blueAccent.withOpacity(0.3),
            child: Text(
              "Delete",
              style: TextStyle(color: Colors.white),
            ),
            alignment: Alignment.centerRight,
          ),

          ///删除监听
          onDismissed: (DismissDirection direction) {
            Toast.show(context, "删除第$index个");
          },

          ///配置各个方向拖动是否删除Widget
          confirmDismiss: (DismissDirection direction) {
            print("方向${direction.index}");
            if (direction.index == 3) {
              return Future<bool>(() => false);
            } else {
              return Future<bool>(() => true);
            }
          },

          ///移除后界面改变监听
          onResize: () {
            Toast.show(context, "onResize");
          },

          ///拖动方向
          direction: DismissDirection.horizontal,

          ///界面改变之后重新布局的时长
          resizeDuration: const Duration(milliseconds: 300),

          ///把阈值???
          dismissThresholds: const <DismissDirection, double>{},

          ///运动持续时间
          movementDuration: const Duration(milliseconds: 200),

          ///横轴端偏移
          crossAxisEndOffset: 0.0,

          ///拖动开始行为
          dragStartBehavior: DragStartBehavior.start,
        );
      },
      itemCount: 4,
    );
  }
}
