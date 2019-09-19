import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxWidgetState();
  }
}

class CheckBoxWidgetState extends State<CheckBoxWidget> {
  dynamic isCheck = false;

  @override
  Widget build(BuildContext context) {
    ///单选框
    ///Checkboxes allow the user to select multiple options from a set. The Checkbox widget implements this component.
    return Checkbox(
      ///是否选中
      value: isCheck,
      ///是否有第三种状态
      tristate: true,
      ///选中取消的回调
      onChanged: (isCheck) {
        setState(() {
          this.isCheck = isCheck;
        });
      },
      ///活动时的颜色
      activeColor: Colors.deepPurple.shade300,
      ///选中时的颜色
      checkColor: Colors.deepPurple,
//    materialTapTargetSize: ,
    );
  }
}
