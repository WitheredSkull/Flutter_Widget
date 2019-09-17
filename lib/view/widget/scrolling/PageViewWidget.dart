import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      ///滑动方向
      scrollDirection: Axis.horizontal,

      ///反向
      reverse: false,

      ///控制器
      controller:
          PageController(initialPage: 2, keepPage: true, viewportFraction: 1.0),

      ///物理滑动
      physics: PageScrollPhysics(),

      ///页面闪照
      pageSnapping: true,

      ///滑动监听
      onPageChanged: (index) {
        print(index);
      },

      ///子部件
      children: <Widget>[
        Container(
          color: Colors.deepPurpleAccent,
          child: Center(
              child: Text(
            "PageView1",
            style: TextStyle(color: Colors.white),
          )),
        ),
        Container(
          color: Colors.brown,
          child: Center(
              child: Text(
            "PageView2",
            style: TextStyle(color: Colors.white),
          )),
        )
      ],

      ///开始拖动行为
      dragStartBehavior: DragStartBehavior.start,
    );
  }
}
