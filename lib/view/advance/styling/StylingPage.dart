import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/PaddingWidget.dart';
import 'package:flutter_widget/view/widget/styling/MediaQueryWidget.dart';
import 'package:flutter_widget/view/widget/styling/ThemeWidget.dart';

///所有的文本部件
class StylingPage extends StatefulWidget {
  ItemViewExplainBean data;

  StylingPage(this.data);

  @override
  State<StatefulWidget> createState() {
    return StylingPageState();
  }
}

class StylingPageState extends BaseCodeState<StylingPage> {
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
        ItemName("MediaQuery"),
        DefaultButton("MediaQuery", () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return MediaQueryWidget();
          }));
        }),
        ItemName("Padding"),
        PaddingWidget(),
        ItemName("Theme"),
        ThemeWidget(),
        SizedBox(
          height: APP.AssetsSize.PAGE_EXPANDED,
        )
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
