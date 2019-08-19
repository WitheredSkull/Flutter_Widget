import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatelessWidget {
  Animation<double> animation;

  AnimatedBuilderWidget(this.animation);

  @override
  Widget build(BuildContext context) {
    ///用于构建动画的通用小部件
    ///A general-purpose widget for building animations. AnimatedBuilder is useful for more complex widgets that wish to include an animation as part of a larger build function. To use AnimatedBuilder, simply construct the widget and pass it a builder function.
    return AnimatedBuilder(
      ///定义好了的动画
      animation: animation,

      ///动画构建
      builder: (context, child) {
        ///这是一个正方形方块，会跟随动画的值设置宽高
        return Container(
          color: Colors.purpleAccent,
          width: animation.value,
          height: animation.value,
        );
      },

      ///文档说这个子部件会传递给build，但是没什么效果
      child: Container(
        color: Colors.cyan,
        width: animation.value,
        height: animation.value,
      ),
    );
  }
}
