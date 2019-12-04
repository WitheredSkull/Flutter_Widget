import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/Toast.dart';
import 'package:flutter_widget/view/widget/interactions/AbsorbPointerWidget.dart';
import 'package:flutter_widget/view/widget/interactions/DismissibleWidget.dart';
import 'package:flutter_widget/view/widget/interactions/DragTargetDraggableWidget.dart';
import 'package:flutter_widget/view/widget/interactions/GestureDetectorWidget.dart';
import 'package:flutter_widget/view/widget/interactions/IgnorePointerWidget.dart';
import 'package:flutter_widget/view/widget/interactions/LongPressDraggableWidget.dart';
import 'package:flutter_widget/view/widget/scrolling/ScrollableWidget.dart';

class TouchInteractionsPage1 extends StatefulWidget {
  ItemViewExplainBean data;

  TouchInteractionsPage1(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TouchInteractionsPage1State();
  }
}

class TouchInteractionsPage1State
    extends BaseCodeState<TouchInteractionsPage1> {
  @override
  Widget body() {
    return SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Explan(
        widget.data.title,
        marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
        children: <Widget>[
          Text(widget.data.subtitle),
          Text(widget.data.explain)
        ],
      ),
      ItemName("GestureDetector"),
      GestureDetectorWidget(),
      ItemName("IgnorePointer"),
      IgnorePointerWidget(),
      ItemName("LongPressDraggable"),
      LongPressDraggableWidget(),
      ItemName("Scrollable"),
      SizedBox(
        height: 150,
        child: ScrollableWidget(),
      ),
      SizedBox(
        height: APP.AssetsSize.PAGE_EXPANDED,
      ),
    ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
