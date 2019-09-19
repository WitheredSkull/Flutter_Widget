import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/SimpleDialogWidget.dart';

class IconButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///填充一个图标的按钮
    ///An icon button is a picture printed on a Material widget that reacts to touches by filling with color (ink).
    return IconButton(
      ///Button显示的Icon
      icon: Icon(Icons.touch_app),

      ///点击事件
      onPressed: () {
        SimpleDialogWidget.show(context, title: "按钮", content: "感谢点击");
      },

      ///Icon大小
      iconSize: 48,

      ///内边距
      padding: EdgeInsets.all(10),

      ///对齐方向
      alignment: Alignment.center,

      ///默认的Icon颜色
      color: Colors.deepPurple.shade600,

      ///获取到焦点时定的颜色
      focusColor: Colors.deepPurple.shade500,

      ///停留在按钮上徘徊时的颜色
      hoverColor: Colors.deepPurple.shade300,

      ///正在按下时按钮时高亮的水墨溅射颜色
      highlightColor: Colors.deepPurple.shade800,

      ///停止按下时墨水飞溅的颜色
      splashColor: Colors.redAccent,

      ///禁用时的颜色
      disabledColor: Colors.black26,

      ///专注的节点
//        focusNode: FocusNode(),
      ///自动获取焦点
      autofocus: false,

      ///长按提示
      tooltip: "长按提示",
    );
  }
}
