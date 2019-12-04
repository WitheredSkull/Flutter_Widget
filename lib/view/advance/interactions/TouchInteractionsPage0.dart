import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/interactions/AbsorbPointerWidget.dart';
import 'package:flutter_widget/view/widget/interactions/DismissibleWidget.dart';
import 'package:flutter_widget/view/widget/interactions/DragTargetDraggableWidget.dart';

class TouchInteractionsPage0 extends StatefulWidget {
  ItemViewExplainBean data;

  TouchInteractionsPage0(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TouchInteractionsPage0State();
  }
}

class TouchInteractionsPage0State
    extends BaseCodeState<TouchInteractionsPage0> {
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
      ItemName("AbsorbPointer"),
      AbsorbPointerWidget(),
      ItemName("Dismissible"),
      DismissibleWidget(),
      ItemName("Use DragTarget and Draggable"),
      DragTargetDraggableWidget(),
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
