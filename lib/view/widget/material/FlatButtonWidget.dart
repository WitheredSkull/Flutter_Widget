import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/SimpleDialogWidget.dart';

class FlatButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///Material的平面按钮
    ///A flat button is a section printed on a Material Components widget that reacts to touches by filling with color.
    return FlatButton(

        ///点击回调
        onPressed: () {
          SimpleDialogWidget.show(context, title: "按钮", content: "感谢点击");
        },

        ///高亮的回调
        onHighlightChanged: (isHighlight) {
          print("是否高亮$isHighlight");
        },

        ///下级子部件的文本主题样式
//        textTheme: ,
        ///下级子部件的文字颜色
//    textColor: ,
        ///禁用时的颜色
        disabledColor: Colors.black26,

        ///获取到焦点时定的颜色
        focusColor: Colors.deepPurple.shade500,

        ///停留在按钮上徘徊时的颜色
        hoverColor: Colors.deepPurple.shade300,

        ///正在按下时按钮时高亮的水墨溅射颜色
        highlightColor: Colors.deepPurple.shade800,

        ///停止按下时墨水飞溅的颜色
        splashColor: Colors.redAccent,

        ///使用亮度确定文字颜色
        colorBrightness: Brightness.light,

        ///按钮的内边距
        padding: EdgeInsets.all(8),

        ///按钮的外形
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

        ///剪裁效果
        clipBehavior: Clip.none,

        ///专注的节点
//        focusNode: FocusNode(),
        ///自动获取焦点
        autofocus: false,

        ///点击事件的大小
//        materialTapTargetSize: ,
        ///子部件
        child: Text("FlatButton平面按钮"));
  }
}
