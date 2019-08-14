import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/basic/PlaceholderWidget.dart';
import 'package:flutter_widget/view/widget/basic/RaisedButtonWidget.dart';
import 'package:flutter_widget/view/widget/basic/ScaffoldWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/RowWidget.dart';

///所有的文本输入部件
class Basic3Page extends StatefulWidget {
  ItemViewExplainBean data;

  Basic3Page(this.data);

  @override
  State<StatefulWidget> createState() {
    return BasicState();
  }
}

class BasicState extends BaseCodeState<Basic3Page> {
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
          ItemName("Placeholder"),
          Container(
            width: 200,
            child: PlaceholderWidget(),
          ),
          ItemName("RaisedButton"),
          RaisedButtonWidget(),
              ItemName("Row"),
              RowWidget(),
              ItemName("Scaffold"),
            ScaffoldWidget(),

        ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
