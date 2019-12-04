import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class AbsorbPointerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AbsorbPointerWidgetState();
  }
}

class AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  var isAbsorbing = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ///可以吸收指针的小部件
        ///A widget that absorbs pointers during hit testing.
        AbsorbPointer(
          ///是否吸收指针(true：吸收后子控件树将无法触发点击事件,false：不做任何处理)
          absorbing: isAbsorbing,

          ///子部件
          child: DefaultButton("click here", () {
            Toast.show(context, "absorbing: false");
          }),

          ///忽视语义
          ignoringSemantics: true,
        ),
        SizedBox(
          width: 30,
        ),
        Text("开关absorbing"),
        Switch(
            value: isAbsorbing,
            onChanged: (value) {
              setState(() {
                isAbsorbing = value;
              });
            })
      ],
    );
  }
}
