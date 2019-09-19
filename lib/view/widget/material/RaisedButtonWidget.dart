import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/SimpleDialogWidget.dart';

class RaisedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Material 组件库的凸起按钮
    ///A Material Design raised button. A raised button consists of a rectangular piece of material that hovers over the interface.
    return RaisedButton(
      onPressed: () {
        SimpleDialogWidget.show(context, title: "按钮", content: "感谢点击");
      },

      ///按钮默认文本颜色
      textTheme: ButtonTextTheme.normal,
      textColor: Colors.white,
      disabledTextColor: Colors.black26,
      color: Colors.deepPurple.shade300,
      disabledColor: Colors.black45,

      ///获取到焦点时定的颜色
      focusColor: Colors.deepPurple.shade500,

      ///停留在按钮上徘徊时的颜色
      hoverColor: Colors.deepPurple.shade300,

      ///正在按下时按钮时高亮的水墨溅射颜色
      highlightColor: Colors.deepPurple.shade800,

      ///停止按下时墨水飞溅的颜色
      splashColor: Colors.redAccent,

      ///颜色的亮度
      colorBrightness: Brightness.light,

      ///默认的阴影高度
//      elevation: ,
      ///获取到焦点时的阴影高度
//    focusElevation: ,
      ///按下时徘徊的阴影高度
//    hoverElevation: ,
      ///高亮时的阴影高度
//    highlightElevation: ,
      ///禁用时的阴影高度
//      disabledElevation: ,
      ///内边距
      padding: EdgeInsets.all(10),

      ///外形
//      shape: ,
      ///剪裁行为
      clipBehavior: Clip.none,

      ///专注的节点
//        focusNode: FocusNode(),
      ///自动获取焦点
      autofocus: false,

      ///点击事件的大小
//        materialTapTargetSize: ,
      ///动画时长
      animationDuration: Duration(milliseconds: 400),

      ///子部件
      child: Text("RaisedButton"),
    );
  }
}
