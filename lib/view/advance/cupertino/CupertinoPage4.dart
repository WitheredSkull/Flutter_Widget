import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoPopupSurfaceWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoScrollbarWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoSegmentedControlWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoSliderWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoSwitchWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoTabBarWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoTabScaffoldWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoTextFieldWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoTimerPickerWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class CupertinoPage4 extends StatefulWidget {
  ItemViewExplainBean data;

  CupertinoPage4(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoPage4State();
  }
}

class CupertinoPage4State extends BaseCodeState<CupertinoPage4> {
  @override
  bool isIos() => true;

  @override
  Widget body() {
    return SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Explan(
        widget.data.title,
        marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
        children: <Widget>[
          Text(widget.data.subtitle),
          Text(widget.data.explain)
        ],
      ),
      ItemName("CupertinoPopupSurface"),
      DefaultButton("show CupertinoPopupSurface", () {
        CupertinoPopupSurfaceWidget.showCupertinoPopupSurface(context);
      }),
      ItemName("CupertinoScrollbar"),
      Container(
        height: 200,
        child: CupertinoScrollbarWidget(),
      ),
      ItemName("CupertinoSegmentedControl"),
      CupertinoSegmentedControlWidget(),
      ItemName("CupertinoSlider"),
      CupertinoSliderWidget(),
      ItemName("CupertinoSwitch"),
      CupertinoSwitchWidget(),
      ItemName("CupertinoTabBar"),
      CupertinoTabBarWidget(),
      ItemName("CupertinoTabScaffold and CupertinoTabView"),
      DefaultButton("点击查看", () {
        Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
          return CupertinoTabScaffoldWidget();
        }));
      }),
      ItemName("CupertinoTextField"),
      CupertinoTextFieldWidget(),
      ItemName("CupertinoTimerPicker"),
      DefaultButton("show CupertinoTimerPicker", () {
        CupertinoTimerPickerWidget.showCupertinoTimerPickerDialog(context);
      })
    ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
