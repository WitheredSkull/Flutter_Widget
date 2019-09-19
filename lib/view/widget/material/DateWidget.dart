import 'package:flutter/material.dart';

class DateWidget {
  static showDatePickerDialog(BuildContext context) {
    ///显示日期选择器
    showDatePicker(

        ///上下文支持
        context: context,

        ///初始化选中的日期
        initialDate: DateTime.now(),

        ///可选择的最早日期
        firstDate: DateTime(1990),

        ///可选择的最晚日期
        lastDate: DateTime(DateTime.now().year + 1),

        ///选择一天谓词，不晓得有啥用吗
//    selectableDayPredicate:
        ///初始化日期选择方式
        initialDatePickerMode: DatePickerMode.year,

        ///多语言多国家
//        locale: Locale("zh"),

        ///文字装饰
//        textDirection: TextDirection.rtl,
        ///构建界面样式
        builder: (context, child) {
          return Theme(data: ThemeData.dark(), child: child);
        });
  }

  static showTimePickerDialog(BuildContext context) {
    ///时间选择器
    showTimePicker(

        ///上下文
        context: context,

        ///初始化默认选中的时间
        initialTime: TimeOfDay.now(),

        ///构建界面样式
        builder: (context, child) {
          return Theme(data: ThemeData.light(), child: child);
        });
  }
}
