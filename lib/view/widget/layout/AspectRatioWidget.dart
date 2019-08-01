import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///纵横比组件，当父控件设置了宽或者高其中一个，通过纵横比(aspectRatio)可以控制另一个的数值大小
    ///比如在这个组件上我创造了一个100宽度的父控件，aspectRatio设置为2/3，最后产生的AspectRatio的高度为(100/(2/3))
    ///A widget that attempts to size the child to a specific aspect ratio.
    return AspectRatio(
      ///设置纵横比
      aspectRatio: 2 / 3,
      ///子组件
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              "assets/images/icon/flutter_widget.png",
              width: 50,
              height: 50,
            ),
            Text("AspectRatio:aspectRatio: 2 / 3 (宽是高的2/3)")
          ],
        ),
      ),
    );
  }
}
