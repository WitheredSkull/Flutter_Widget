import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimatedCrossFadeState();
  }
}

class AnimatedCrossFadeState extends State<AnimatedCrossFadeWidget> {
  CrossFadeState _crossFadeState = CrossFadeState.showFirst;

  @override
  Widget build(BuildContext context) {
    ///一个小部件，它在两个给定的子元素之间交叉淡出，并在它们的大小之间进行动画。
    ///A widget that cross-fades between two given children and animates itself between their sizes.
    return AnimatedCrossFade(
      ///第一个子部件
      firstChild: Container(
        color: Colors.purple,
        width: 100,
        height: 100,
        child: _getButton(),
      ),

      ///第二个子部件
      secondChild: Container(
        color: Colors.yellow,
        width: 150,
        height: 150,
        child: _getButton(),
      ),

      ///设置需要展示第一个还是第二个，当动态切换时会有动画展示两个子部件的切换
      crossFadeState: _crossFadeState,
      ///动画持续时长
      duration: Duration(seconds: 2),
      ///第一个部件的插值器
      firstCurve: Curves.linear,
      ///第二个部件展示动画的插值器
      secondCurve: Curves.linear,
      ///大小变化的插值器
      sizeCurve: Curves.linear,
      ///对齐方式
      alignment: Alignment.topCenter,
      ///复原持续时长
      reverseDuration: Duration(seconds: 2),
      ///布局构建器（这是让两个控件叠加显示并且动画结束后隐藏其中一个）
      layoutBuilder: (Widget topChild, Key topChildKey, Widget bottomChild,
          Key bottomChildKey) {
        return Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              key: bottomChildKey,
              left: 0.0,
              top: 0.0,
              right: 0.0,
              child: bottomChild,
            ),
            Positioned(
              key: topChildKey,
              child: topChild,
            ),
          ],
        );
      },
    );
  }

  _getButton() => MaterialButton(
        onPressed: () {
          setState(
            () {
              _crossFadeState = _crossFadeState == CrossFadeState.showFirst
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst;
            },
          );
        },
        child: Text(
          "点击开始动画",
          style: TextStyle(color: Colors.white),
        ),
      );
}
