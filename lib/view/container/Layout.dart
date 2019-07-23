import 'package:flutter/material.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/ContainerWidget.dart';
import 'package:flutter_widget/view/widget/Explan.dart';

class LayoutPage extends StatefulWidget {
  String title;

  LayoutPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<LayoutPage> {
  @override
  Widget body() {
    return Column(
      children: <Widget>[
        Explan("啦啦啦", children: <Widget>[Text("测试2"), Text("测试3")],),
        SizedBox(height: 16,),
        ContainerWidget()
      ],
    );
  }

  LayoutState(
      {String path, String copeContent, bool isEnableCode = false})
      : super(
      path: path,
      copeContent: copeContent,
      isEnableCode: isEnableCode);

  @override
  String title() {
    return widget.title;
  }
}
