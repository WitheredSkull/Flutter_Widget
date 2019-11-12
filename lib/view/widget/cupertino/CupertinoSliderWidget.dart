import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class CupertinoSliderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoSliderWidgetState();
  }
}

class CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  var position = 0.5;

  @override
  Widget build(BuildContext context) {
    ///Used to select from a range of values.
    ///一个IOS风格的滑动指示器,用于从一组值中选择
    return CupertinoSlider(
      ///滑动到的位置
      value: position,

      ///滑动监听
      onChanged: (position) {
        setState(() {
          this.position = position;
        });
      },

      ///开始滑动监听
      onChangeStart: (position) {
        Toast.show(context, "开始监听$position");
      },

      ///结束滑动监听
      onChangeEnd: (position) {
        Toast.show(context, "结束监听$position");
      },

      ///最小值(value需要在最小值和最大值之间波动)
      min: 0.0,

      ///最大值
      max: 1.0,

      ///分成多少个区间进行滑动
      divisions: 4,

      ///滑块颜色和已滑过部分颜色
      activeColor: CupertinoColors.activeGreen,
    );
  }
}
