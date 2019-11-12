import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoSegmentedControlWidgetState();
  }
}

class CupertinoSegmentedControlWidgetState
    extends State<CupertinoSegmentedControlWidget> {
  var choice = 1;

  @override
  Widget build(BuildContext context) {
    ///An iOS-style segmented control. Used to select mutually exclusive options in a horizontal list.
    ///一个ios风格的分段控件。用于在水平列表中选择互斥选项。
    return CupertinoSegmentedControl<int>(
      ///可选互斥子部件，里面是一个map格式的,一个键对应一个值
      children: {
        1: Text(
          "第一个",
          style: TextStyle(decoration: TextDecoration.none, fontSize: 14),
        ),
        2: Text("第二个",
            style: TextStyle(decoration: TextDecoration.none, fontSize: 14)),
        3: Text("第三个",
            style: TextStyle(decoration: TextDecoration.none, fontSize: 14))
      },

      ///选中回调
      onValueChanged: (value) {
        setState(() {
          choice = value;
        });
      },

      ///默认选中children中对饮的map的key
      groupValue: choice,

      ///没有选中的颜色
      unselectedColor: CupertinoColors.white,

      ///选中了的颜色
      selectedColor: CupertinoColors.activeBlue,

      ///边框颜色
      borderColor: CupertinoColors.activeBlue,

      ///按压时显示的颜色
      pressedColor: CupertinoColors.activeBlue,

      ///内边距
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    );
  }
}
