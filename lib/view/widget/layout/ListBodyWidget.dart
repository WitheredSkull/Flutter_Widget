import 'package:flutter/material.dart';

class ListBodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///按照顺序和指定的方向展示每一个子部件
    ///A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.
    return ListBody(
      ///主轴方向
      mainAxis: Axis.vertical,

      ///颠倒布局(true的效果是子部件的顺序是反的)
      reverse: false,
      ///子部件
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 80,
          color: Colors.lightBlue,
          child: Text(
            "mainAxis: Axis.horizontal",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 80,
          color: Colors.red,
          child: Text(
            "reverse: false",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
