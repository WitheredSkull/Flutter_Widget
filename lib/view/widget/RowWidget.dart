import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///在水平方向上布局子部件列表。(和Column完全一样，只是一个排列方向的问题，所有的事情90°思考就是Row)
    /// Layout a list of child widgets in the horizontal direction.
    return Row(
      /**设置主轴方向对齐（Row主轴是x轴，决定轴方向取决于你的布局方向）
       * MainAxisAlignment.start代表着x轴在父部件内从左到右布局
       */
      mainAxisAlignment: MainAxisAlignment.start,

      ///主轴方向上的布局大小(MainAxisSize.min代表着Row会尽可能缩小他的宽度,max则会尽可能扩大宽度)
      mainAxisSize: MainAxisSize.min,

      ///交叉轴，原理和主轴差不多，但是主轴代表x时交叉轴就代表着Y (设置end代表着这一列的y轴方向从上到下)
      crossAxisAlignment: CrossAxisAlignment.end,

      ///文字方向(Android开发者设置中会有一个文字方向，这个功能是一样的,但是他和其他属性一起使用会有一些混合效果)
      textDirection: TextDirection.ltr,

      ///垂直方向(也就是内容的方向，比如你第一个是1,最后一个是2,down模式时会是12,up模式是21)
      verticalDirection: VerticalDirection.down,

      ///设置文字基线
      textBaseline: TextBaseline.ideographic,

      ///要按照列排版的子控件
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 100,
          height: 50,
          color: Colors.lightBlue,
          child: Text(
            "MainAxisAlignment.start",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 90,
          height: 50,
          color: Colors.red,
          child: Text(
            "MainAxisSize.min",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 120,
          height: 50,
          color: Colors.cyan,
          child: Text(
            "CrossAxisAlignment.end",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
