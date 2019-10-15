import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoActionSheetWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoActivityIndicatorWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoAlertDialogWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoButtonWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoDatePickerWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class CupertinoPage0 extends StatefulWidget {
  ItemViewExplainBean data;

  CupertinoPage0(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoPage0State();
  }
}

class CupertinoPage0State extends BaseCodeState<CupertinoPage0> {

  @override
  bool isIos() =>true;

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
      ItemName("CupertinoActionSheet"),
      DefaultButton("show CupertinoActionSheet", () {
        CupertinoActionSheetWidget.showCupertinoActionSheet(context);
      }),
      ItemName("CupertinoActivityIndicator"),
      CupertinoActivityIndicatorWidget(),
      ItemName("CupertinoAlertDialog"),
      DefaultButton("show CupertinoAlertDialog", () {
        CupertinoAlertDialogWidget.showCupertinoAlertDialog1(context);
      }),
      ItemName("CupertinoButton"),
      CupertinoButtonWidget(),
    ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
