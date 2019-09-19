import 'package:flutter/material.dart';

class DropdownButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropdownButtonWidgetState();
  }
}

class DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  dynamic value = 0;

  @override
  Widget build(BuildContext context) {
    ///一个下拉选项卡部件，点击可以弹出下拉选择框
    ///Shows the currently selected item and an arrow that opens a menu for selecting another item.
    return DropdownButton<int>(
      items: [
        ///子部件尽可能使用这个，因为他是官方的
        DropdownMenuItem(
          child: Material(
            color: Colors.redAccent,
            child: Text(
              "DropdownButton1",
              style: TextStyle(color: Colors.white),
            ),
          ),
          value: 0,
        ),
        DropdownMenuItem(
          child: Text(
            "DropdownButton2",
          ),
          value: 1,
        ),
      ],

      ///当点击了其他的Item时会被回调
      onChanged: (index) {
        setState(() {
          value = index;
        });
      },

      ///选择DropdownMenuItem中对应value的那一个
      value: value,

      ///如果Value为空才会显示这个小部件
      hint: Text("Default"),

      ///如果items或者onChanged为空显示这个小部件
      disabledHint: Text("Empty"),

      ///阴影高度
      elevation: 8,

      ///默认的下级文本样式
//      style: TextStyle(),
      ///底部下划线也是一个部件
      underline: Container(
        height: 2,
        color: Colors.redAccent,
      ),

      ///下拉框右边的指示图标
      icon: Icon(Icons.arrow_downward),

      ///被禁用时Icon显示的颜色
      iconDisabledColor: Colors.black12,

      ///开启时Icon显示的颜色
      iconEnabledColor: Colors.redAccent,
      iconSize: 14,

      ///是否降低按钮的高度，如果为true高度会降低一半
      isDense: false,

      ///是否填充剩余空间，默认false，也就是控件有多大就显示多大
      isExpanded: false,
    );
  }
}
