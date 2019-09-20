import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/layout/CustomSingleChildLayoutWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/OffstageWidget.dart';
import 'package:flutter_widget/view/widget/layout/OverflowBoxWidget.dart';
import 'package:flutter_widget/view/widget/layout/SizedBoxWidget.dart';
import 'package:flutter_widget/view/widget/layout/SizedOverflowBoxWidget.dart';
import 'package:flutter_widget/view/widget/layout/TransformWidget.dart';

class SingleLayout3Page extends StatefulWidget {
  ItemViewExplainBean data;

  SingleLayout3Page(this.data);

  @override
  State<StatefulWidget> createState() {
    return Layout3State();
  }
}

class Layout3State extends BaseCodeState<SingleLayout3Page> {
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
}
