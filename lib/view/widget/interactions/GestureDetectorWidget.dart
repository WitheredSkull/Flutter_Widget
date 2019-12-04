import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class GestureDetectorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GestureDetectorWidgetState();
  }
}

class GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  @override
  Widget build(BuildContext context) {
    ///手势探测器,拥有一系列事件的监控(真的多)
    ///A widget that detects gestures. Attempts to recognize gestures that correspond to its non-null callbacks. If this widget has a child, it defers to that child for its sizing behavior. If it does not have a child, it grows to fit the parent instead.
    return GestureDetector(
      ///需要配置事件的子部件
      child: Container(
          color: Colors.deepPurpleAccent,
          child: Text(
            "Chick Here",
            style: TextStyle(color: Colors.white),
          )),
      ///轻敲，就是点击
      onTap: () {
        print("onTap");
        Toast.show(context, "onTap");
      },
      ///长按
      onLongPress: () {},
      ///双击
      onDoubleTap: () {},
      ///力压结束
      onForcePressEnd: (forcePressEndDetails) {},
      ///力压最高点
      onForcePressPeak: (forcePressEndDetails) {},
      ///力压开始
      onForcePressStart: (forcePressEndDetails) {},
      ///力压更新
      onForcePressUpdate: (forcePressEndDetails) {},
      ///水平拖动取消
      onHorizontalDragCancel: () {},
      ///水平拖动按下
      onHorizontalDragDown: (dragDownDetails) {},
      ///水平拖动结束
      onHorizontalDragEnd: (dragEndDetails) {},
      ///水平拖动开始
      onHorizontalDragStart: (dragStartDetails) {},
      ///水平拖动更新
      onHorizontalDragUpdate: (dragUpdateDetails) {},
      ///长按结束
      onLongPressEnd: (longPressEndDetails) {},
      ///长按移动更新
      onLongPressMoveUpdate: (longPressMoveUpdateDetails) {},
      ///长按开始
      onLongPressStart: (longPressStateDetails) {},
      ///长按松手
      onLongPressUp: () {},
      ///触发Pan事件
//      onPanCancel: () {},
      ///Pan事件按下
//      onPanDown: (dragDownDetails) {},
      ///Pan事件结束
//      onPanEnd: (dragEndDetails) {},
      ///Pan事件开始
//      onPanStart: (dragStateDetails) {},
      ///Pan事件更新
//      onPanUpdate: (dragUpdateDetails) {},
      ///缩放事件结束
//      onScaleEnd: (scaleEndDetails) {},
      ///缩放事件开始
//      onScaleStart: (scaleStartDetails) {},
      ///缩放事件更新
//      onScaleUpdate: (scaleUpdateDetails) {},
      ///二次点击取消
      onSecondaryTapCancel: () {},
      ///二次点击按下
      onSecondaryTapDown: (tapDownDetails) {},
      ///二次点击抬起
      onSecondaryTapUp: (tapUpDetails) {},
      ///点击取消
      onTapCancel: () {},
      ///点击按下
      onTapDown: (tapDownDetails) {},
      ///点击抬起
      onTapUp: (tapUpDetails) {},
      ///垂直拖动取消
      onVerticalDragCancel: () {},
      ///垂直拖动按下
      onVerticalDragDown: (dragDownDetails) {},
      ///垂直拖动结束
      onVerticalDragEnd: (dragEndDetails) {},
      ///垂直拖动开始
      onVerticalDragStart: (dragStartDetails) {},
      ///垂直拖动更新
      onVerticalDragUpdate: (dragUpdateDetails) {},
    );
  }
}
