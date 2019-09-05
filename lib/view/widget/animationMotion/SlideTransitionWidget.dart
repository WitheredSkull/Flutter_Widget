import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class SlideTransitionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///相对于之前的位置做平移的动画
    ///Animates the position of a widget relative to its normal position.
    return SlideTransitionWidgetState();
  }
}

class SlideTransitionWidgetState extends State<SlideTransitionWidget>
    with SingleTickerProviderStateMixin {
  Animation<Offset> animation;
  AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<Offset>(begin: Offset.zero, end: Offset(0.0,1.0))
        .animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SlideTransition(
          ///平移动画
          position: animation,
          ///跟随动画变换Hit测试
          transformHitTests: true,
          ///文本方向
          textDirection: TextDirection.ltr,
          ///子部件
          child: Icon(
            Icons.adjust,
            color: AssetsColor.COLOR_PRIMARY,
            size: 38,
          ),
        ),
        DefaultButton("开始平移渐变动画", (){
          controller.forward();
        })
      ],
    );
  }
}
