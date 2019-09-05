import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedMeWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedOpacityWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedPhysicalModelWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedPositionedWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedSizeWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';

class AnimationMotionPage2 extends StatefulWidget {
  ItemViewExplainBean data;

  AnimationMotionPage2(this.data);

  @override
  State<StatefulWidget> createState() {
    return AnimationMotionPage2State();
  }
}

class AnimationMotionPage2State extends BaseCodeState<AnimationMotionPage2>
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
        ItemName("AnimatedOpcity"),
        AnimatedOpacityWidget(),
        ItemName("AnimatedPhysicalModel"),
        AnimatedPhysicalModelWidget(),
        ItemName("AnimatedPositioned"),
        Container(
          width: 200,
          height: 150,
          color: Colors.white,
          child: AnimatedPositionedWidget(),
        ),
        ItemName("AnimatedSize"),
        AnimatedSizeWidget(),
        ItemName("AnimatedWidget"),
        AnimatedMeWidget(),
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
