import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class FadeTransitionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///改变部件不透明度的动画
    ///Animates the opacity of a widget.
    return FadeTransitionWidgetState();
  }
}

class FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    ///创建动画控制器同时设置动画的范围
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 1.0, end: 0.1).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FadeTransition(
          ///设置透明度变换的动画
          opacity: animation,

          ///无障碍的一个功能，通常不需要做处理
          alwaysIncludeSemantics: false,

          ///设置子控件
          child: Container(
            width: 100,
            height: 100,
            color: Colors.greenAccent,
          ),
        ),
        SizedBox(width: 30,),
        DefaultButton("开始透明度改变动画", () {
          setState(() {
            controller.forward();
          });
        })
      ],
    );
  }
}
