import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/SimpleDialogWidget.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///浮动操作按钮是一个圆形图标按钮，悬停在内容上，以促进应用程序中的主要操作。浮动操作按钮是支架中最常用的
    ///A floating action button is a circular icon button that hovers over content to promote a primary action in the application. Floating action buttons are most commonly used in the Scaffold.floatingActionButton field.
    return FloatingActionButton(

        ///点击事件
        onPressed: () {
          SimpleDialogWidget.show(context, title: "按钮", content: "感谢点击");
        },

        ///长按时的提示
        tooltip: "长按提示",

        ///前景颜色
        foregroundColor: Colors.deepPurple.shade100,

        ///背景颜色（和前景颜色叠加显示）
        backgroundColor: Colors.deepPurple.shade300,

        ///获取到焦点时定的颜色
        focusColor: Colors.deepPurple.shade500,

        ///停留在按钮上徘徊时的颜色
        hoverColor: Colors.deepPurple.shade300,

        ///停止按下时墨水飞溅的颜色
        splashColor: Colors.redAccent,

        ///      Hero动画设置的Tag
//      heroTag: ,
        ///阴影高度
//   elevation: ,
        ///获取到焦点时的阴影高度
//focusElevation: ,
        ///按下徘徊时的阴影高度
//    hoverElevation: ,
        ///高亮时的阴影高度
//    highlightElevation: ,
        ///禁用时的阴影高度
//    disabledElevation: ,
        ///mini的FloatingActionButton会更小
        mini: false,

        ///自定义外形
//      shape: ,
        ///剪裁行为
        clipBehavior: Clip.none,

        ///专注的节点
//        focusNode: FocusNode(),
        ///自动获取焦点
        autofocus: false,

        ///点击事件的大小
//        materialTapTargetSize: ,
        ///子部件
        child: Icon(
          Icons.album,
          color: Colors.white,
          size: 24,
        ));
  }
}
