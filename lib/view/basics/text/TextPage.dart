import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/text/RichTextWidget.dart';
import 'package:flutter_widget/view/widget/text/DefaultTextWidget.dart';
import 'package:flutter_widget/view/widget/text/TextWidget.dart';

///所有的文本部件
class TextPage extends StatefulWidget {
  ItemViewExplainBean data;

  TextPage(this.data);

  @override
  State<StatefulWidget> createState() {
    return TextState();
  }
}

class TextState extends BaseCodeState<TextPage> {
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
        DefaultWidget(),
        ItemName("RichText"),
        RichTextWidget(),
        ItemName("Text"),
        TextWidget(),
        SizedBox(height: APP.AssetsSize.PAGE_EXPANDED,)
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
