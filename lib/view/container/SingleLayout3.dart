import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/CustomSingleChildLayoutWidget.dart';
import 'package:flutter_widget/view/widget/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/ItemName.dart';
import 'package:flutter_widget/view/widget/OffstageWidget.dart';
import 'package:flutter_widget/view/widget/OverflowBox.dart';
import 'package:flutter_widget/view/widget/SizedBoxWidget.dart';
import 'package:flutter_widget/view/widget/SizedOverflowBoxWidget.dart';
import 'package:flutter_widget/view/widget/TransformWidget.dart';

class Layout3Page extends StatefulWidget {
  ItemViewExplainBean data;

  Layout3Page(this.data);

  @override
  State<StatefulWidget> createState() {
    return Layout3State();
  }
}

class Layout3State extends BaseCodeState<Layout3Page> {
  bool offstage = false;

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
              Text(widget.data.explain),
            ],
          ),
          ItemName("Offstage"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    offstage = !offstage;
                  });
                },
                child: Text(offstage ? "显示" : "隐藏"),
              ),
              OffstageWidget(offstage),
            ],
          ),
          ItemName("OverflowBox"),
          Container(
            color: Colors.red,
            width: 200,
            height: 200,
            child: OverflowBoxWidget(),
          ),
          ItemName("SizedBox"),
          SizedBoxWidget(),
          ItemName("SizedOverflowBox"),
          Container(
            color: Colors.red,
            child: SizedOverflowBoxWidget(),
          ),
          ItemName("Transform"),
          TransformWidget(),
          ItemName("CustomSingleChildLayout"),
          CustomSingleChildLayoutWidget(),
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
