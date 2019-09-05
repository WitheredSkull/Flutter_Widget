import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class RotationTransitionWidget extends StatefulWidget {
  ///旋转动画
  ///Animates the rotation of a widget.
  @override
  State<StatefulWidget> createState() {
    return RotationTransitionWidgetState();
  }
}

class RotationTransitionWidgetState extends State<RotationTransitionWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 360.0).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///旋转过渡动画
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        RotationTransition(
          ///设置旋转动画
          turns: animation,
          ///对齐方式
          alignment: Alignment.center,
          ///子部件
          child: Container(
            width: 100,
            height: 100,
            color: Colors.greenAccent,
          ),
        ),
        SizedBox(width: 30,),
        DefaultButton("开始旋转过渡动画", () {
          setState(() {
            controller.forward();
          });
        }),
      ],
    );
  }
}
