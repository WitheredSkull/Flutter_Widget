import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoSwitchWidgetState();
  }
}

class CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool isSwitch = true;

  @override
  Widget build(BuildContext context) {
    ///An iOS-style switch. Used to toggle the on/off state of a single setting.
    ///IOS样式的开关切换按钮
    return CupertinoSwitch(
      value: isSwitch,
      onChanged: (value) {
        setState(() {
          isSwitch = value;
        });
      },
      activeColor: CupertinoColors.activeBlue,
      dragStartBehavior: DragStartBehavior.start,
    );
  }
}
