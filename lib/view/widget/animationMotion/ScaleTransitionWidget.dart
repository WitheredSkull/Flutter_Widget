import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class ScaleTransitionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///这是一个缩放渐变动画
    ///Animates the scale of transformed widget.
    return ScaleTransitionWidgetState();
  }
}

class ScaleTransitionWidgetState extends State<ScaleTransitionWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 1.0, end: 2.0).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ///缩放动画
        ScaleTransition(
          ///设置缩放动画
          scale: animation,
          ///对齐方式
          alignment: Alignment.topCenter,
          ///子部件
          child: Image.asset(
            "assets/images/icon/flutter_widget.png",
            scale: 4,
          ),
        ),
        DefaultButton("开始缩放动画", () {
          controller.forward();
        }),
      ],
    );
  }
}
