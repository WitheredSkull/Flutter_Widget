import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedDefaultTextStyleState();
  }
}

class AnimatedDefaultTextStyleState
    extends State<AnimatedDefaultTextStyleWidget> {
  TextStyle _textStyle = TextStyle(color: Colors.red,fontSize: 14);
  @override
  Widget build(BuildContext context) {
    ///DefaultTextStyle的动画版本，当给定的样式更改时，它会在给定的持续时间内自动转换默认文本样式(应用于后代文本小部件的文本样式，没有显式样式)。
    ///Animated version of DefaultTextStyle which automatically transitions the default text style (the text style to apply to descendant Text widgets without explicit style) over a given duration whenever the given style changes.
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          ///子布局
          child: Text("AnimatedDefault"),

          ///文本样式
          style: _textStyle,

          ///动画持续时长
          duration: Duration(seconds: 2),

          ///文字对齐方式
          textAlign: TextAlign.center,

          ///是否自动处理多出来的文字(条件允许下多出来的文字会自动换行)
          softWrap: true,

          ///结尾溢出展示风格
          overflow: TextOverflow.clip,

          ///最大行数
          maxLines: 5,

          ///插值器
          curve: Curves.linear,

          ///复原的动画时长
          reverseDuration: Duration(seconds: 2),
        ),
        SizedBox(width: 30,),
        MaterialButton(
          color: Colors.purple,
          child: Text("点击切换样式",style: TextStyle(color: Colors.white),),
          onPressed: () {
            setState(() {
              _textStyle = TextStyle(color: Colors.orange,fontSize: 24);
            });
          },
        )
      ],
    );
  }
}
