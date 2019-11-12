import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoNavigationPage.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoPageTransitionPage.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoPickerWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class CupertinoPage3 extends StatefulWidget {
  ItemViewExplainBean data;

  CupertinoPage3(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoPage3State();
  }
}

class CupertinoPage3State extends BaseCodeState<CupertinoPage3> {
  @override
  bool isIos() => true;

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
      ItemName("CupertinoNavigationBar"),
      DefaultButton("show CupertinoNavigationBar", () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) {
              return CupertinoNavigationBarPage();
            },
          ),
        );
      }),
      ItemName("CupertinoScaffold"),
      DefaultButton("show CupertinoScaffold", () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) {
              return CupertinoNavigationBarPage();
            },
          ),
        );
      }),
      ItemName("CupertinoPageTransition"),
      Text(
        "不会用，不折腾了",
        style: CupertinoTheme.of(context).textTheme.actionTextStyle,
      ),
      DefaultButton("show CupertinoPageTransition", () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) {
              return CupertinoPageTransitionPage();
            },
          ),
        );
      }),
      ItemName("CupertinoPicker"),
      DefaultButton("show CupertinoPicker", () {
       CupertinoPickerWidget.showCupertinoPicker(context);
      }),
    ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
