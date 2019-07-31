import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/ColumnWidget.dart';
import 'package:flutter_widget/view/widget/ExpandedWidget.dart';
import 'package:flutter_widget/view/widget/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/ItemName.dart';
import 'package:flutter_widget/view/widget/RowWidget.dart';
import 'package:flutter_widget/view/widget/WrapWidget.dart';

class MultiLayout extends StatefulWidget {
  ItemViewExplainBean data;

  MultiLayout(this.data);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<MultiLayout> {
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
          ItemName("Column"),
          ColumnWidget(),
          ItemName("Row"),
          RowWidget(),
          ItemName("Expanded"),
          Row(
            children: <Widget>[
              Container(
                width: 80,
                height: 50,
                color: Colors.lightBlue,
              ),
              Container(
                width: 80,
                height: 50,
                color: Colors.yellow,
              ),
              ExpandedWidget(),
              Expanded(
                flex: 1,
                child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    color: Colors.brown,
                    child: Text(
                      "flex: 1",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
          ItemName("Wrap"),
          WrapWidget(),
          SizedBox(
            height: 48,
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
