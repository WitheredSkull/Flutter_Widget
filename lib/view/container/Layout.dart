import 'package:flutter/material.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/AlignWidget.dart';
import 'package:flutter_widget/view/widget/AspectRatioWidget.dart';
import 'package:flutter_widget/view/widget/CenterWidget.dart';
import 'package:flutter_widget/view/widget/ContainerWidget.dart';
import 'package:flutter_widget/view/widget/Explan.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/FittedBoxWidget.dart';
import 'package:flutter_widget/view/widget/ItemName.dart';
import 'package:flutter_widget/view/widget/PaddingWidget.dart';

class LayoutPage extends StatefulWidget {
  ItemViewExplainBean data;

  LayoutPage(this.data);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<LayoutPage> {
  GlobalKey key = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

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
          ItemName("Container"),
          ContainerWidget(),
          ItemName("Padding"),
          Container(
            child: PaddingWidget(),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.3))),
          ),
          ItemName("Center"),
          Container(
            child: CenterWidget(),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.3))),
          ),
          ItemName("Align"),
          Container(
            child: AlignWidget(),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.3))),
          ),
          ItemName("FittedBox"),
          Container(
            width: 200,
            height: 150,
            child: FittedBoxWidget(),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.3))),
          ),
          ItemName("AspectRatio"),
          Container(
            width: 100,
            child: Align(
              alignment: Alignment.center,
              child: AspectRatioWidget(),
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.3))),
          ),
          SizedBox(height: 48,)
        ],
      ),
    );
  }

  LayoutState({String path, String copeContent, bool isEnableCode = false})
      : super(path: path, copeContent: copeContent, isEnableCode: isEnableCode);

  @override
  String title() {
    return widget.data.title;
  }

  @override
  void initData() {}
}
