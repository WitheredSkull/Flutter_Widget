import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SliderWidgetState();
  }
}

class SliderWidgetState extends State<SliderWidget> {
  double value = 50.0;
  double startValue = 0.0;
  double endValue = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ///滑块,在一条线上滑动选择值
        ///Sliders let users select from a range of values by moving the slider thumb.
        Slider(
          ///默认选择的进度
          value: value,

          ///滑动进度改变监听
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          },

          ///进度改版后滑动起始点回调监听
          onChangeStart: (value) {
            print("起始点$value");
            setState(() {
              startValue = value;
            });
          },

          ///进度改版后滑动结束点回调监听
          onChangeEnd: (value) {
            print("结束点$value");
            setState(() {
              endValue = value;
            });
          },

          ///最小的进度值
          min: 0.0,

          ///最大的进度值
          max: 100.0,

          ///分成多少个块滑动
          divisions: 100,

          ///滑块上面显示的文字
          label: "进度${value.toInt()}%",

          ///已经划过的活动颜色和指示器的颜色
          activeColor: Colors.deepPurple,

          ///未划过的活动颜色
          inactiveColor: Colors.deepPurple.shade300,

          ///有关语义的回调，要返回一个String
//      semanticFormatterCallback: ,
        ),
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Text("滑动起始进度${startValue.toInt()}"),
          SizedBox(
            width: 20,
          ),
          Offstage(
            offstage: endValue == -1,
            child: Text("滑动结束进度${endValue.toInt()}"),
          ),
        ])
      ],
    );
  }
}
