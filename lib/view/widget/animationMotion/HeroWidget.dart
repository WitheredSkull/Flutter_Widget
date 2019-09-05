import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///Hero动画，类似于元素共享动画，主要用于两个页面直接有同样的控件，做平滑的过渡
    ///A widget that marks its child as being a candidate for hero animations.
    return HeroWidgetState();
  }
}

class HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Hero(
      ///Hero动画的TAG，想要在两个页面间展示Hero动画，两个页面都需要有Hero控件，并且tag必须相同
      tag: "image",

      ///子部件
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return newPage();
          }));
        },
        child: Image.asset(
          "assets/images/icon/flutter_widget.png",
          scale: 4,
        ),
      ),

      ///创建矩形渐变
//    createRectTween: ,
//      flightShuttleBuilder: (
//        BuildContext flightContext,
//        Animation<double> animation,
//        HeroFlightDirection flightDirection,
//        BuildContext fromHeroContext,
//        BuildContext toHeroContext,
//      ) {},
      ///飞行的建造者，可以自己配置动画方案
//        flightShuttleBuilder:,
      ///占位符生成器
//    placeholderBuilder: ,
      ///开启用户手势转换,主要用作IOS右划返回
      transitionOnUserGestures: true,
    );
  }

  Widget newPage() {
    return Scaffold(
      body: Center(
        ///新的页面必须也要有Hero控件，并且tag需要和上一个页面相同才会有动画展示
        ///如果想让动画效果更好，可以两个child设置成一模一样
        child: Hero(
            tag: "image",
            child: Image.asset("assets/images/icon/flutter_widget.png")),
      ),
    );
  }
}
