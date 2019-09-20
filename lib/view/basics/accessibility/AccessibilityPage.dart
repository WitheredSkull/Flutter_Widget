import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/accessibility/ExcludeSemanticsWidget.dart';
import 'package:flutter_widget/view/widget/accessibility/MergeSemanticsWidget.dart';
import 'package:flutter_widget/view/widget/accessibility/SemanticsWidget.dart';
import 'package:flutter_widget/view/widget/layout/ColumnWidget.dart';
import 'package:flutter_widget/view/widget/layout/ExpandedWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';

///这个东西是用来辅助障碍人士的
class Accessibility extends StatefulWidget {
  ItemViewExplainBean data;

  Accessibility(this.data);

  @override
  State<StatefulWidget> createState() {
    return AccessibilityState();
  }
}

class AccessibilityState extends BaseCodeState<Accessibility> {
  bool isAccessibility = true;

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
          ItemName("ExcludeSemantics"),
          ExcludeSemanticsWidget(isAccessibility, () {
            setState(() {
              isAccessibility = !isAccessibility;
            });
          }),
          ItemName("MergeSemantics"),
          MergeSemanticsWidget(),
          ItemName("Semantics"),
          SemanticsWidget(),
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
