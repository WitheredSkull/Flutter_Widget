import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/layout/FlowWidget.dart';
import 'package:flutter_widget/view/widget/layout/GridViewWidget.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/ListBodyWidget.dart';
import 'package:flutter_widget/view/widget/layout/ListViewWidget.dart';

class Multi2LayoutPage extends StatefulWidget {
  ItemViewExplainBean data;

  Multi2LayoutPage(this.data);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<Multi2LayoutPage> {
  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Explan(
            widget.data.title,
            marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
            children: <Widget>[
              Text(widget.data.subtitle),
              Text(widget.data.explain)
            ],
          ),
          ItemName("Flow"),
          Container(
            width: 200,
            height: 100,
            child: FlowWidget(),
          ),
          ItemName("ListBody"),
          ListBodyWidget(),
          ItemName("ListView"),
          SizedBox(
            width: 240,
            height: 120,
            child: ListViewWidget(),
          ),
          ItemName("GridView"),
          SizedBox(
            width: 240,
            height: 150,
            child: GridViewWidget(),
          ),
          SizedBox(
            height: APP.AssetsSize.PAGE_EXPANDED,
          )
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
}
