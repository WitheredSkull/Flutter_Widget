import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///动画小部件，当给定子元素的大小发生变化时，它会在给定的持续时间内自动转换其大小。
    ///Animated widget that automatically transitions its size over a given duration whenever the given child's size changes.
    return AnimatedSizeWidgetState();
  }
}

class AnimatedSizeWidgetState extends State<AnimatedSizeWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      ///动画持续时长
      duration: Duration(seconds: 2),

      ///垂直同步，在定义类的时候需要加上with SingleTickerProviderStateMixin
      vsync: this,

      ///对齐方式
      alignment: Alignment.center,

      ///动画曲线函数
      curve: Curves.linear,

      ///子布局
      child: Container(
        ///宽度（随动画的改变而改变）
        width: size.width,

        ///高度
        height: size.height,
        color: Colors.greenAccent,
        child: FlatButton(
            onPressed: _switchValue,
            child: Text(
              "开始大小变换动画",
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }

  Size size = Size(100, 100);

  _switchValue() {
    setState(() {
      size.width == 100 ? size = Size(200, 200) : size = Size(100, 100);
    });
  }
}
