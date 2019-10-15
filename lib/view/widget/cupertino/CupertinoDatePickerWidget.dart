import 'package:flutter/cupertino.dart';

class CupertinoDatePickerWidget {
  static showCupertinoDatePicker(BuildContext context) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return Container(
            height: 200,

            ///一个IOS样式的日期选择弹窗
            ///An iOS-style date or date and time picker.
            child: CupertinoDatePicker(
              ///选择模式
              mode: CupertinoDatePickerMode.date,

              ///选中回调
              onDateTimeChanged: (DateTime time) {},

              ///默认选中的日期
              initialDateTime: DateTime.now(),

              ///起始日期
              minimumDate: DateTime(1990),

              ///最后的截止日期
              maximumDate: DateTime(2040),

              ///最小一年
              minimumYear: 1,

              ///最多一年（不能和maximumDate同时设置）
//            maximumYear: 2040,

              ///设置分钟间隔
              minuteInterval: 1,

              ///是否使用24小时制
              use24hFormat: false,

              ///背景颜色
              backgroundColor: CupertinoColors.white,
            ),
          );
        });
  }
}
