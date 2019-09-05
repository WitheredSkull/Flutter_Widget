import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class SizeTransitionWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    ///动画自己的大小和剪辑，并对齐孩子。
    ///Animates its own size and clips and aligns the child.
    return SizeTransitionWidgetState();
  }

}

class SizeTransitionWidgetState extends State<SizeTransitionWidget> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(vsync: this,duration: Duration(seconds: 2));
    animation = Tween(begin: 2.0,end: 3.0).animate(controller);
//    animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ///Animates its own size and clips and aligns the child.
        SizeTransition(
          ///轴方向
          axis: Axis.vertical,
          ///对准轴 0.0时在中心，负数时在上方，正数时在下方
          axisAlignment: -0.3,
          ///设置Size动画
          sizeFactor: animation,
          ///子部件
          child: Image.asset("assets/images/icon/flutter_widget.png",scale: 4,),),
        DefaultButton("开始Size渐变动画", (){
          controller.forward();
        })
      ],
    );
  }
}