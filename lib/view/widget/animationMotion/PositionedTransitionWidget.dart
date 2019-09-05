import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class PositionedTransitionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///这个部件可以用动画去移动子部件的位置
    ///Animated version of Positioned which takes a specific Animation to transition the child's position from a start position to and end position over the lifetime of the animation.
    return PositionedTransitionWidgetState();
  }

}

class PositionedTransitionWidgetState extends State<PositionedTransitionWidget>
    with SingleTickerProviderStateMixin {
  Animation<RelativeRect> animation;
  AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = RelativeRectTween(begin: RelativeRect.fromLTRB(0, 0, 0, 0),
        end: RelativeRect.fromLTRB(150, 0, 0, 0)).animate(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///定位过渡动画
    return Column(
      children: <Widget>[
        SizedBox(
          width: 200,
          height: 100,
          child: Stack(
            children: <Widget>[
              PositionedTransition(rect: animation, child: Icon(Icons.forward,size: 38,color: AssetsColor.COLOR_PRIMARY,)),
            ],
          ),
        ),
        DefaultButton("开始Position过渡动画", (){
          controller.forward();
        })
      ],
    );
  }
}