import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/application/app.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class CupertinoTimerPickerWidget {
  static showCupertinoTimerPickerDialog(BuildContext context) {
    showCupertinoModalPopup(context: context, builder: (context) {
      return CupertinoTimerPicker(onTimerDurationChanged: (duration) {
        Toast.show(context, "选中了 ${duration.toString()}");
      }, mode: CupertinoTimerPickerMode.hm,
        initialTimerDuration: Duration(hours: DateTime
            .now()
            .hour, minutes: DateTime
            .now()
            .minute),
        minuteInterval: 1,
        secondInterval: 1,
        alignment: Alignment.center,
        backgroundColor: AssetsColor.COLOR_BACKGROUND,
      );
    });
  }
}