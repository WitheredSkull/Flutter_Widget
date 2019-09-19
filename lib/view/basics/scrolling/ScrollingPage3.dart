import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/scrolling/ScrollableWidget.dart';
import 'package:flutter_widget/view/widget/scrolling/ScrollbarWidget.dart';
import 'package:flutter_widget/view/widget/scrolling/SingleChildScrollViewWidget.dart';

class ScrollingPage3 extends StatefulWidget {
  ItemViewExplainBean data;

  ScrollingPage3(this.data);

  @override
  State<StatefulWidget> createState() {
    return ScrollingPage3State();
  }
}

class ScrollingPage3State extends BaseCodeState<ScrollingPage3> {
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
          ItemName("Scrollable"),
          SizedBox(
            height: 150,
            child: ScrollableWidget(),
          ),
          ItemName("Scrollbar"),
          SizedBox(
            height: 150,
            child: ScrollbarWidget(),
          ),
          ItemName("SingleChildScrollView"),
          SizedBox(
            height: 150,
            child: SingleChildScrollViewWidget(),
          ),
          SizedBox(
            height: 40,
          ),
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
