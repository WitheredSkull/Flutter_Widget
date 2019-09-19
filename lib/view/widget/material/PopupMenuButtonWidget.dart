import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PopupMenuButtonWidgetState();
  }
}

class PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {
  dynamic value = 0;

  @override
  Widget build(BuildContext context) {
    ///按钮按下时显示一个弹窗菜单
    ///Displays a menu when pressed and calls onSelected when the menu is dismissed because an item was selected.
    return PopupMenuButton<int>(
      ///Item构建
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: Text("PopupMenuButton 1"),
            value: 0,
            textStyle: TextStyle(color: Colors.deepPurple),
          ),
          PopupMenuItem(
            child: Text("PopupMenuButton 2"),
            value: 1,
            textStyle: TextStyle(color: Colors.deepPurple),
          ),
          PopupMenuItem(
            child: Text("PopupMenuButton 3"),
            value: 2,
            textStyle: TextStyle(color: Colors.deepPurple),
          ),
        ];
      },

      ///默认选中第几个
      initialValue: value,

      ///选中回调
      onSelected: (index) {
        value = index;
      },
      onCanceled: () {},

      ///长按提示文本
      tooltip: "长按事件",

      ///阴影高度
//      elevation: ,
      padding: EdgeInsets.all(10),

      ///子部件
      child: Text(
        "PopupMenuButton",
        style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.deepPurple.shade300,
            fontSize: 24),
      ),

      ///图标（图标和子部件只能选择显示一个）
//      icon: Icon(Icons.arrow_downward),

      ///应用于弹出菜单按钮的偏移量。
      offset: Offset.zero,

      ///是否启用
      enabled: true,

      ///自定义外形
//      shape: ,
      ///弹出的PopupWindow弹窗背景颜色
      color: Colors.white,

      ///true显示Theme主题，false显示PopupMenuTheme主题
      captureInheritedThemes: true,
    );
  }
}
