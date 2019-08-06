import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/text/TextWidget.dart';

///这个东西是用来辅助障碍人士的
class TextView extends StatefulWidget {
  ItemViewExplainBean data;

  TextView(this.data);

  @override
  State<StatefulWidget> createState() {
    return TextState();
  }
}

class TextState extends BaseCodeState<TextView> {
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
        ItemName("DefaultTextStyle"),
        TextWidget(),
      ],
    ));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
