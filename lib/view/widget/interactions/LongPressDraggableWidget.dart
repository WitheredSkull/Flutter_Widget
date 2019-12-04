import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class LongPressDraggableWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LongPressDraggableWidgetState();
  }
}

class LongPressDraggableWidgetState extends State<LongPressDraggableWidget> {
  var data = "请长按拖动我";

  @override
  Widget build(BuildContext context) {
    ///长按拖动的控件，和Draggable是一样的，但是需要长按才能拖动
    ///Makes its child draggable starting from long press.
    return LongPressDraggable(
      ///子部件
      child: Container(
        height: 100,
        width: 100,
        color: Colors.blue,
        child: Text(
          "长按拖动",
          style: TextStyle(color: Colors.white),
        ),
      ),

      ///拖动后有反馈效果的Widget
      feedback: Container(
        height: 100,
        width: 100,
        color: Colors.grey,
        child: Text(
          "feedback\n如果喜欢记得给作者点赞哦！",
          style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 14),
        ),
      ),

      ///用来配合DragTarget
      data: "123",

      ///拖动期间部件被锚定的位置
      ///DragAnchor.child：点击后可滑动块中心点是你的手指点击屏幕的点
      ///DragAnchor.pointer：点击后部件显示在你点击点的下方
      dragAnchor: DragAnchor.child,

      ///亲和力
      ///Axis.vertical：手指上下垂直拖动才能拖动Widget
      ///Axis.horizontal：手指左右平行拖动才能拖动Widget
      ///不设置可以随意拖动
//        affinity: Axis.vertical,
      ///设置为1或者不设置才会有拖动的效果
//        maxSimultaneousDrags: 1,
      ///拖动开始
      onDragStarted: () {
        setState(() {
          data = "请长按拖动我";
        });
        Toast.show(context, "onDragStarted");
      },

      ///拖动取消
      onDraggableCanceled: (velocity, offset) {
        setState(() {
          data = "请长按拖动我";
        });
        Toast.show(context, "onDraggableCanceled");
      },

      ///拖动结束
      onDragEnd: (details) {
        Toast.show(context, "onDragEnd");
      },

      ///拖动完成
      onDragCompleted: () {
        setState(() {
          data = "拖动完成";
        });
        Toast.show(context, "onDragCompleted");
      },

      ///忽略反馈语义(通常不需要去适配语义相关)
//        ignoringFeedbackSemantics: true,
    );
  }
}
