import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/BaseLineWidget.dart';
import 'package:flutter_widget/view/widget/ConstrainedBoxWidget.dart';
import 'package:flutter_widget/view/widget/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/FractionallySizedBoxWidget.dart';
import 'package:flutter_widget/view/widget/IntrinsicHeightWidget.dart';
import 'package:flutter_widget/view/widget/IntrinsicWidthWidget.dart';
import 'package:flutter_widget/view/widget/ItemName.dart';
import 'package:flutter_widget/view/widget/LimitedBoxWidget.dart';

class Layout2Page extends StatefulWidget {
  ItemViewExplainBean data;

  Layout2Page(this.data);

  @override
  State<StatefulWidget> createState() {
    return Layout2State();
  }
}

class Layout2State extends BaseCodeState<Layout2Page> {
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
          ItemName("ConstraindBox"),
          ConstrainedBoxWidget(),
          ItemName("BaseLine"),
          Container(
            margin: EdgeInsets.only(top: 16),
            color: Colors.lightBlue,
            padding: EdgeInsets.only(left: 14, right: 14),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                BaseLineWidget(),
                Baseline(baseline: 10, baselineType: TextBaseline.ideographic,child: Text("基线对齐"),),
                BaseLineWidget(),
              ],
            ),
          ),
          ItemName("FractionallySizedBox"),
          Container(
            width: 200,
            height: 200,
            color: Colors.white,
            child: FractionallySizedBoxWidget(),
          ),
          ItemName("IntrinsicHeight"),
          IntrinsicHeightWidget(),
          ItemName("IntrinsicWidth"),
          IntrinsicWidthWidget(),
          ItemName("IntrinsicWidth"),
          LimitedBoxWidget(),
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
