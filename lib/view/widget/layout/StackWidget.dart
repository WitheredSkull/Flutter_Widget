import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///重叠小部件，可以用来重叠内容，后面的child会覆盖之前的，同时它的子部件可以使用Positioned实现定位，效果类似相对布局
    ///This class is useful if you want to overlap several children in a simple way, for example having some text and an image, overlaid with a gradient and a button attached to the bottom.
    return Stack(
      ///对齐方向
      alignment: Alignment.topLeft,

      ///文本方向
      textDirection: TextDirection.ltr,

      ///子组件适应父组件的方式
      fit: StackFit.loose,

      ///超出显示方式(现在是直接剪裁掉)
      overflow: Overflow.clip,

      ///子部件
      children: <Widget>[
        ///定位小部件
        Positioned(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            alignment: Alignment.center,
            child: Text(
              "第一层:\nleft: 0\ntop: 0",
              style: TextStyle(color: Colors.white),
            ),
          ),
          left: 0,
          top: 0,
        ),
        ///定位小部件
        Positioned(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: Text(
              "第二层:\nright: 0\nbottom: 0",
              style: TextStyle(color: Colors.white),
            ),
          ),
          right: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
