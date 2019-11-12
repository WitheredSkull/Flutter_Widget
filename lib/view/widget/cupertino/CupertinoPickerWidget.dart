import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class CupertinoPickerWidget {
  static showCupertinoPicker(BuildContext context) {
    showCupertinoModalPopup(
        builder: (BuildContext context) {
          return Container(
            height: 400,
            ///一个IOS风格的选择弹窗，从列表中选中一个
            ///An iOS-style picker control. Used to select an item in a short list.
            child: CupertinoPicker(
              ///直径（可以把这个控件想象成一个圆筒，而控件是上面的贴花，直径越大，贴花展示的空间就越大）
              diameterRatio: 1.07,
              ///背景颜色
              backgroundColor: CupertinoColors.lightBackgroundGray,
              ///轴偏移
              offAxisFraction: 0.0,
              ///使用放大镜效果
              useMagnifier: true,
              ///放大倍数
              magnification: 1.2,
              ///滑动控制器
              scrollController: FixedExtentScrollController(),
              ///挤压（越小两个ITEM的空隙越大）
              squeeze: 1.45,
              ///子部件
              children: <Widget>[
                Center(child: Text("CupertinoPicker Item 0")),
                Center(child: Text("CupertinoPicker Item 1")),
                Center(child: Text("CupertinoPicker Item 2")),
              ],
              ///选中了的监听
              onSelectedItemChanged: (int value) {
                Toast.show(context, "选中的ITEM$value");
              },
              ///ITEM空间范围
              itemExtent: 60.0,
            ),
          );
        },
        context: context);
  }
}
