import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScrollableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Scrollable实现可滚动小部件的交互模型，包括手势识别
    ///Scrollable implements the interaction model for a scrollable widget, including gesture recognition, but does not have an opinion about how the viewport, which actually displays the children, is constructed.
    return Scrollable(
      ///轴方向
      axisDirection: AxisDirection.down,

      ///控制器
      controller: ScrollController(),

      ///物理滑动处理
      physics: ScrollPhysics(),

      ///构建视图
      viewportBuilder: (context, position) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Scrollable $index"),
            );
          },
          itemCount: 10,
        );
      },

      ///从语义排除
      excludeFromSemantics: false,

      ///语义子部件总数
      semanticChildCount: 10,

      ///拖动开始行为
      dragStartBehavior: DragStartBehavior.start,
    );
  }
}
