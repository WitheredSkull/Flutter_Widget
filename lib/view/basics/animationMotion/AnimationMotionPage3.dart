import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/animationMotion/DecoratedBoxTransitionWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/FadeTransitionWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/HeroWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/PositionedTransitionWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/RotationTransition.dart';
import 'package:flutter_widget/view/widget/animationMotion/ScaleTransitionWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/SizeTransitionWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/SlideTransitionWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';

class AnimationMotionPage3 extends StatefulWidget {
  ItemViewExplainBean data;

  AnimationMotionPage3(this.data);

  @override
  State<StatefulWidget> createState() {
    return AnimationMotionPage3State();
  }
}

class AnimationMotionPage3State extends BaseCodeState<AnimationMotionPage3>
    with SingleTickerProviderStateMixin {
  @override
  Widget body() {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Explan(
          widget.data.title,
          marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
          children: <Widget>[
            Text(widget.data.subtitle),
            Text(widget.data.explain)
          ],
        ),
        ItemName("DecoratedBoxTransition"),
        DecoratedBoxTransitionWidget(),
        ItemName("FadeTransition"),
        FadeTransitionWidget(),
        ItemName("Hero"),
        HeroWidget(),
        Text("点击图片开始Hero动画"),
        ItemName("PositionTransition"),
        PositionedTransitionWidget(),
        ItemName("RotationTransition"),
        RotationTransitionWidget(),
        ItemName("ScaleTransition"),
        ScaleTransitionWidget(),
        ItemName("SizeTransition"),
        SizeTransitionWidget(),
        ItemName("SlideTransition"),
        SlideTransitionWidget(),
        SizedBox(height: 48,)
      ],
    ));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
