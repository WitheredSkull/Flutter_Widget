import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class IgnorePointerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IgnorePointerWidgetState();
  }
}

class IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  var isIgnore = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(isIgnore?"cancel ignoring":"ignoring"),
        Switch(
          value: isIgnore,
          onChanged: (value) {
            setState(() {
              isIgnore = value;
            });
          },
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            Toast.show(context, "Click success");
          },
          ///这个部件可以让子部件事件忽略，类似禁止点击
          ///A widget that is invisible during hit testing. When ignoring is true, this widget (and its subtree) is invisible to hit testing. It still consumes space during layout and paints its child as usual. It just cannot be the target of located events, because it returns false from RenderBox.hitTest.
          child: IgnorePointer(
            ///是否忽略事件
            ignoring: isIgnore,
            ///用来触发事件的子部件
            child: Text("测试"),

            ///语义，不用管
//              ignoringSemantics:false
          ),
        )
      ],
    );
  }
}
