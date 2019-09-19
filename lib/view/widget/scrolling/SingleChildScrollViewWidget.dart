import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///单一控件滚动，类似Scrollbar，但是没有滚动条
    ///A box in which a single widget can be scrolled. This widget is useful when you have a single box that will normally be entirely visible, for example a clock face in a time picker, but you need to make sure it can be scrolled if the container gets too small in one axis (the scroll direction).
    return SingleChildScrollView(
      ///滚动方向
      scrollDirection: Axis.vertical,

      ///反方向
      reverse: false,

      ///内边距
      padding: EdgeInsets.all(10),

      ///是否是主要的如果设置了controller，primary必须为false，否则会报错
      primary: false,

      ///模拟物理滑动
      physics: ScrollPhysics(),

      ///滑动控制器
      controller: ScrollController(),

      ///子部件
      child: ListView.builder(
        shrinkWrap: true,
        //有时候嵌套太深会产生滑动冲突，
        // 可以用NeverScrollableScrollPhysics禁止这个部件的滑动
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("SingleChildScrollView $index"),
          );
        },
        itemCount: 10,
      ),

      ///拖动开始行为
      dragStartBehavior: DragStartBehavior.start,
    );
  }
}
