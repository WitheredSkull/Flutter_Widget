import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/basic/AppbarWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/ColumnWidget.dart';
import 'package:flutter_widget/view/widget/layout/ContainerWidget.dart';
class Basic1Page extends StatefulWidget {
  ItemViewExplainBean data;

  Basic1Page(this.data);

  @override
  State<StatefulWidget> createState() {
    return BasicState();
  }
}

class BasicState extends BaseCodeState<Basic1Page> {

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
              ItemName("Appbar"),
              AppbarWidget(),
              ItemName("Column"),
              ColumnWidget(),
              ItemName("Container"),
              ContainerWidget(),
              SizedBox(height: APP.AssetsSize.PAGE_EXPANDED,)
            ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
