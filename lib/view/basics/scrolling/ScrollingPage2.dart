import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/scrolling/NotificationListenerWidget.dart';
import 'package:flutter_widget/view/widget/scrolling/PageViewWidget.dart';
import 'package:flutter_widget/view/widget/scrolling/RefreshIndicatorWidget.dart';
import 'package:flutter_widget/view/widget/scrolling/ScrollBehaviorWidget.dart';

class ScrollingPage2 extends StatefulWidget {
  ItemViewExplainBean data;

  ScrollingPage2(this.data);

  @override
  State<StatefulWidget> createState() {
    return ScrollingPage2State();
  }
}

class ScrollingPage2State extends BaseCodeState<ScrollingPage2> {
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
          ItemName("NotificationListener"),
          NotificationListenerWidget(),
          ItemName("PageView"),
          SizedBox(height: 100, child: PageViewWidget()),
          ItemName("RefreshIndicator"),
          RefreshIndicatorWidget(),
          ItemName("ScrollBehavior"),
          SizedBox(
            height: 150,
            child: ScrollBehaviorWidget(),
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
