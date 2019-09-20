import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个Material风格的小碎片,容放一个小标签
    ///A Material Design chip. Chips represent complex entities in small blocks, such as a contact.
    return Chip(
      ///标签（显示在正中间）
      label: Text("标签"),

      ///前面显示的部件
      avatar: Icon(
        Icons.person,
        color: Colors.white,
      ),

      ///标签主题
      labelStyle: TextStyle(color: Colors.white),

      ///标签内边距
      labelPadding: EdgeInsets.all(4),

      ///右边的删除Icon
      deleteIcon: Icon(Icons.backspace),

      ///删除事件
      onDeleted: () {},

      ///删除Icon的颜色
      deleteIconColor: Colors.white,

      ///删除Icon长按的提示文字
      deleteButtonTooltipMessage: "删除",

      ///外形
//      shape :,
      ///剪裁方式
      clipBehavior: Clip.none,

      ///专注的节点
//      focusNode: FocusNode(),
      ///自动获取焦点
      autofocus: false,

      ///背景颜色
      backgroundColor: Colors.deepPurple,

      ///内边距
      padding: EdgeInsets.all(10),

      ///点击的大小
//      materialTapTargetSize: ,
      ///阴影的高度
//    elevation: ,
      ///阴影颜色
      shadowColor: Colors.grey,
    );
  }
}
