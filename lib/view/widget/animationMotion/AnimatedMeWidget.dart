import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class AnimatedMeWidget extends StatefulWidget {
  ///A widget that rebuilds when the given Listenable changes value.
  ///AnimatedWidget通常与动画对象一起使用，这些对象是Listenable，
  ///当给定的Listenable变化时跟随重构界面
  ///但是它可以与任何Listenable一起使用，包括ChangeNotifier和ValueNotifier。
  @override
  State<StatefulWidget> createState() {
    return AnimatedMeWidgetState();
  }
}

class AnimatedMeWidgetState extends State<AnimatedMeWidget>
    with SingleTickerProviderStateMixin {
  ///listenable的控制器
  AnimationController controller;

  ///listenable
  Animation<double> listenable;

  @override
  void initState() {
    super.initState();

    ///需要注意使用vsync时，类定义需要加入 with SingleTickerProviderStateMixin
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    ///动画值在Tween给定的范围内变幻
    listenable = Tween(begin: 14.0, end: 24.0).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedImageSizeWidget(listenable),
        DefaultButton("开始文字放大动画", () {
          setState(() {
            controller.forward();
          });
        })
      ],
    );
  }
}

///这里就是AnimatedWidget使用的地方，继承AnimatedWidget后给父类传入自己定义好的listenable即可
///后面需要使用动画曲线函数传过来的值就直接listenable.value
class AnimatedImageSizeWidget extends AnimatedWidget {
  Animation<double> animation;

  ///给父类传入listenable
  AnimatedImageSizeWidget(this.animation) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Text(
      "测试文字",

      ///正式使用动画曲线函数的值，因为自定义的listenable是animation，我们就使用animation.value
      style: TextStyle(fontSize: animation.value),
    );
  }
}
