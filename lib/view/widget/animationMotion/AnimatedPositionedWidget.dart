import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///类似于相对布局，这个部件可以用动画更改子部件在相对布局中的位置
    ///Animated version of Positioned which automatically transitions the child's position over a given duration whenever the given position changes.
    return AnimatedPositionedWidgetState();
  }
}

class AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  Rect rect = Rect.fromLTRB(0, 0, 0, 0);

  _switchValue() {
    setState(() {
      rect.left == 0
          ? rect = Rect.fromLTRB(50, 50, 0, 0)
          : rect = Rect.fromLTRB(0, 0, 0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    //因为是一个Positioned 的Widget 需要用Stack包裹，并且Stack父部件可能需要制定宽高
    return Stack(
      children: <Widget>[
        AnimatedPositioned(
          ///子部件
          child: DefaultButton("开始位置变换动画", _switchValue),

          ///动画持续时长
          duration: Duration(seconds: 2),

          ///距离左侧的距离
          left: rect.left,

          ///距离顶部的距离
          top: rect.top,

          ///距离右侧的距离
//          right: ,
          ///距离底部的距离
//        bottom: ,
          ///宽度
//        width: ,
          ///高度
//        height: ,
          ///动画曲线函数
          curve: Curves.linear,
        )
      ],
    );
  }
}
