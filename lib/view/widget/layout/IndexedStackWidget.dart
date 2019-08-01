import 'package:flutter/material.dart';

class IndexedStackWidget extends StatelessWidget {
  var isShowFirst = true;


  IndexedStackWidget(this.isShowFirst);

  @override
  Widget build(BuildContext context) {
    ///在一堆子部件中仅显示一个
    ///A Stack that shows a single child from a list of children.
    return IndexedStack(
      ///对齐方向
      alignment: Alignment.topLeft,
      ///文本方向
      textDirection: TextDirection.ltr,
      ///子组件适应父组件的方式
      sizing: StackFit.loose,
      ///显示第几个Child（指定后其他的都会被隐藏）
      index: isShowFirst?0:1,
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
