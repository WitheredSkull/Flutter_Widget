import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///在垂直方向上布局子部件列表。
    ///Layout a list of child widgets in the vertical direction.
    return Column(
      /**设置主轴方向对齐（Column主轴是y轴，Row主轴是x轴，决定轴方向取决于你的布局方向）
       * MainAxisAlignment.start代表着y轴在父部件内从上到下(这边的start是你主轴的起始方向，y轴是从上到下，start也就代表着上)
       */
      mainAxisAlignment: MainAxisAlignment.start,

      ///主轴方向上的布局大小(MainAxisSize.min代表着Column会尽可能缩小他的高度,max则会尽可能扩大高度)
      mainAxisSize: MainAxisSize.min,

      ///交叉轴，原理和主轴差不多，但是主轴代表x时交叉轴就代表着Y (设置end代表着这一列的x轴方向从右到左)
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
          width: 200,
          height: 50,
          color: Colors.lightBlue,
          child: Text("MainAxisAlignment.start",style: TextStyle(color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          width: 150,
          height: 50,
          color: Colors.red,
          child: Text("MainAxisSize.min",style: TextStyle(color: Colors.white),),
        ),
        Container(
          alignment: Alignment.center,
          width: 180,
          height: 50,
          color: Colors.cyan,
          child: Text("CrossAxisAlignment.end",style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}
