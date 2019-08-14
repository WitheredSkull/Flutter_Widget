import 'package:flutter/material.dart';

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///浮动按钮
    ///A Material Design raised button. A raised button consists of a rectangular piece of material that hovers over the interface.
    return RaisedButton(
      ///点击事件回调
      onPressed: () {
        print("onPressed");
      },
      ///高亮时回调
      onHighlightChanged: (value) {
        print("onHighlightChanged");
      },
      ///设置Button样式
      textTheme: ButtonTextTheme.accent,
      ///设置文本颜色
      textColor: Colors.white,
      ///禁用时的文本颜色
      disabledTextColor: Colors.deepPurpleAccent,
      ///默认的按钮颜色
      color: Colors.lightBlue,
      ///禁用时的按钮颜色
      disabledColor: Colors.green,
      ///获取焦点时的颜色
      focusColor: Colors.red,
      ///悬停时的颜色
      hoverColor: Colors.red,
      ///突出显示的颜色(点击不动的颜色)
      highlightColor: Colors.green,
      ///溅墨的颜色
      splashColor: Colors.yellow,
      ///颜色亮度模式
      colorBrightness: Brightness.light,
      ///抬高
      elevation: 10,
      ///获取焦点时的抬高
      focusElevation: 10,
      ///悬停时的抬高
      hoverElevation: 10,
      ///高亮时的抬高
      highlightElevation: 10,
      ///禁用时的抬高
      disabledElevation: 10,
      ///内边距
      padding: EdgeInsets.all(20),
      ///外形
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ///自定义剪辑行为
      clipBehavior: Clip.antiAlias,
      ///关注焦点
      focusNode: FocusNode(),
      ///目标尺寸
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ////动画时长
      animationDuration: Duration(),
      ///子部件
      child: Text("点击按钮：RaisedButton"),
    );
  }
}
