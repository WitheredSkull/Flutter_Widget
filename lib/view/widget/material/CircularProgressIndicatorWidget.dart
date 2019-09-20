import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class CircularProgressIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircularProgressIndicatorWidgetState();
  }
}

class CircularProgressIndicatorWidgetState
    extends State<CircularProgressIndicatorWidget>
    with SingleTickerProviderStateMixin {
  double value = 0.0;
  Animation<Color> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = ColorTween(begin: Colors.deepPurple, end: Colors.red)
        .animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: 14,
        ),

        ///圆形的进度动画
        ///A material design circular progress indicator, which spins to indicate that the application is busy.
        CircularProgressIndicator(
          ///进度（最大值1.0，最小0）
          value: value,

          ///未填充的圆弧颜色
          backgroundColor: Colors.white,

          ///值改变时的动画，可以用系统默认的，也可以自定义
//          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
          valueColor: animation,

          ///圆弧的宽度
          strokeWidth: 10,

          ///语义相关
          semanticsLabel: "圆形进度动画",

          ///语义相关
          semanticsValue: "当前进度：${value.toString()}",
        ),
        SizedBox(
          height: 14,
        ),
        DefaultButton("动起来", () {
          setState(() {
            if (controller.isCompleted) {
              controller.reset();
            }
            controller.forward();
            controller.addListener(() {
              setState(() {
                value = controller.value;
                print("进度$value");
              });
            });
          });
        }),
      ],
    );
  }
}
