import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///Animated version of PhysicalModel.
    ///这个动画小部件可以动画改变Z轴高度，背景颜色，阴影颜色，边框圆角
    return AnimatedPhysicalModelWidgetState();
  }
}

class AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  double elevation = 0;
  Color color = Colors.green;
  Color shadowColor = Colors.black26;
  double borderRadius = 2.0;

  _switchPhysical() {
    elevation == 0 ? elevation = 10 : elevation = 0;
    color == Colors.green ? color = Colors.red : color = Colors.green;
    borderRadius == 2.0 ? borderRadius = 10 : borderRadius = 2.0;
    shadowColor == Colors.black26
        ? shadowColor = Colors.greenAccent
        : shadowColor = Colors.black26;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPhysicalModel(
      ///Z轴高度
      elevation: elevation,
      ///背景颜色
      color: color,
      ///阴影颜色
      shadowColor: shadowColor,
      ///动画持续时长
      duration: Duration(milliseconds: 800),
      ///边框圆角
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ///是背景颜色改变是否使用动画
      animateColor: true,
      ///阴影颜色改变是否使用动画
      animateShadowColor: true,
      ///动画曲线函数
      curve: Curves.linear,
      ///形状
      shape: BoxShape.rectangle,
      ///剪裁行为
      clipBehavior:Clip.none,
      ///子部件
      child: Container(
        width: 100,
        height: 100,
        child: MaterialButton(
            child: Text("开始物理动画"),
            onPressed: () {
              setState(() {
                _switchPhysical();
              });
            }),
      ),
    );
  }
}
