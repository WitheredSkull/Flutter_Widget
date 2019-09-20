import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwitchWidgetState();
  }
}

class SwitchWidgetState extends State<SwitchWidget> {
  dynamic value = false;

  @override
  Widget build(BuildContext context) {
    ///滑块允许用户通过移动滑块拇指从一系列值中进行选择。
    ///Sliders let users select from a range of values by moving the slider thumb.
    return Switch(
      ///默认是否选中
      value: value,

      ///切换状态监听
      onChanged: (isCheck) {
        setState(() {
          this.value = isCheck;
        });
      },

      ///选中后的滑块颜色
      activeColor: Colors.blueAccent.shade700,

      ///选中后的未滑空间的颜色
      activeTrackColor: Colors.blueAccent.shade200,

      ///未选中的滑块颜色
      inactiveThumbColor: Colors.deepPurple.shade700,

      ///未选中的未滑空间的颜色
      inactiveTrackColor: Colors.deepPurple.shade200,
//      activeThumbImage: ,
//    inactiveThumbImage: ,
//    materialTapTargetSize: ,
      ///拖动开始行为
      dragStartBehavior: DragStartBehavior.start,
    );
  }
}
