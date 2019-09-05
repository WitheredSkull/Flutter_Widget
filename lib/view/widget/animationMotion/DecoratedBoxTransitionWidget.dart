import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class DecoratedBoxTransitionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///一个可以改变装饰盒的动画
    ///Animated version of a DecoratedBox that animates the different properties of its Decoration.
    return DecoratedBoxTransitionWidgetState();
  }
}

class DecoratedBoxTransitionWidgetState
    extends State<DecoratedBoxTransitionWidget>
    with SingleTickerProviderStateMixin {
  ///定义一个泛型为Decoration的动画
  Animation<Decoration> animation;
  ///控制器
  AnimationController controller;
  ///动画曲线函数选择器
  Animation curve;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    curve = CurvedAnimation(parent: controller, curve: Curves.linear);
    animation = DecorationTween(
            begin: BoxDecoration(borderRadius: BorderRadius.circular(6),
            color: Colors.greenAccent,
            ),
            end: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.red,))
        .animate(curve);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        DecoratedBoxTransition(
          decoration: animation,
          position: DecorationPosition.background,
          child: SizedBox(
            width: 100,
            height: 100,
          ),
        ),
        SizedBox(width: 30,),
        DefaultButton("点击开始切换装饰盒动画", (){
          setState(() {
            controller.forward();
          });
        })
      ],
    );
  }
}
