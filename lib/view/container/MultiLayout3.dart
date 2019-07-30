import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/Explan.dart';
import 'package:flutter_widget/application/app.dart'  as APP;

class Multi3Layout extends StatefulWidget {
  ItemViewExplainBean data;

  Multi3Layout(this.data);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<Multi3Layout> {
  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(
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
        ],
      ),
    );
  }

  @override
  void initData() {
  }

  @override
  String title() {
    return widget.data.title;
  }

}