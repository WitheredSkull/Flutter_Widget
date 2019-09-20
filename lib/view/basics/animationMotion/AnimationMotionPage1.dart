import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedBuilderWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedContainerWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedCrossFadeWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedDefaultTextStyleWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedListStateWidget.dart';
import 'package:flutter_widget/view/widget/animationMotion/AnimatedModalBarrierWidget.dart';

class AnimationMotionPage1 extends StatefulWidget {
  ItemViewExplainBean data;

  AnimationMotionPage1(this.data);

  @override
  State<StatefulWidget> createState() {
    return AnimationMotionPage1State();
  }
}

class AnimationMotionPage1State extends BaseCodeState<AnimationMotionPage1>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = Tween(begin: 20.0, end: 100.0).animate(animationController);
  }

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
          ItemName("AnimatedBuild"),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              AnimatedBuilderWidget(animation),
              SizedBox(
                width: 20,
              ),
              MaterialButton(
                onPressed: () => animationController.forward(),
                color: Colors.deepPurple.shade300,
                child: Text(
                  "开始动画",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          ItemName("AnimatedContainer"),
          AnimatedContainerWidget(),
          ItemName("AnimatedCrossFade"),
          AnimatedCrossFadeWidget(),
          ItemName("AnimatedDefaultTextStyle"),
          AnimatedDefaultTextStyleWidget(),
          ItemName("AnimatedList"),
          AnimatedListStateWidget(),
          ItemName("AnimatedModalBarrier"),
          AnimatedModalBarrierWidget(),
          SizedBox(height: APP.AssetsSize.PAGE_EXPANDED,)
        ],
      ),
    );
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
