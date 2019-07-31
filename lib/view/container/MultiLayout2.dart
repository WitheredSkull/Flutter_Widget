import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/FlowWidget.dart';
import 'package:flutter_widget/view/widget/GridViewWidget.dart';
import 'package:flutter_widget/view/widget/ItemName.dart';
import 'package:flutter_widget/view/widget/ListBodyWidget.dart';
import 'package:flutter_widget/view/widget/ListViewWidget.dart';

class Multi2Layout extends StatefulWidget {
  ItemViewExplainBean data;

  Multi2Layout(this.data);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<Multi2Layout> {
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
          )
          ,
          SizedBox(height: 48,)
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
