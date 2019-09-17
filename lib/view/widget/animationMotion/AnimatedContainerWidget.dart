import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimationContainerState();
  }
}

class AnimationContainerState extends State<AnimatedContainerWidget> {
  double _widget = 100;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      ///对齐方式
      alignment: Alignment.center,

      ///内边距
      padding: EdgeInsets.all(0),

      ///设置背景颜色
      color: Colors.purple,

      ///装饰
//      decoration: ,
      ///前景装饰
//      foregroundDecoration: ,
      width: _widget,
      height: 100,

      ///约束条件
//      constraints: ,
      ///外边距
      margin: EdgeInsets.all(0),

      ///变换
//transform: ,
      ///子部件
      child: MaterialButton(
        onPressed: () {
          setState(() {
            _widget = _widget == 100 ? 200 : 100;
          });
        },
        child: Text(
          "点击文字开始动画",
          style: TextStyle(color: Colors.white),
        ),
      ),

      ///动画曲线函数
      curve: Curves.linear,

      ///持续时间
      duration: Duration(seconds: 1),

      ///相反的持续时间
//      reverseDuration: Duration(seconds: 1),
    );
  }
}
