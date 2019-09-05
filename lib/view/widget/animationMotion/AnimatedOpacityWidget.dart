import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///在动画时间内改变Widget的不透明度
    ///Animated version of Opacity which automatically transitions the child's opacity over a given duration whenever the given opacity changes.
    return AnimatedOpacityWidgetState();
  }
}

class AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double _opacity = 1.0;

  _switchOpacity() => _opacity == 1.0 ? _opacity = 0.3 : _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedOpacity(
          ///透明度
          opacity: _opacity,

          ///动画持续时间
          duration: Duration(milliseconds: 800),

          ///动画曲线函数
          curve: Curves.linear,

          ///子部件
          child: Container(
            color: Colors.deepPurple,
            width: 150,
            height: 150,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        DefaultButton("开始透明度动画", () {
          setState(() {
            _switchOpacity();
          });
        }),
      ],
    );
  }
}
