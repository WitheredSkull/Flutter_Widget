import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/input/FormFieldWidget.dart';
import 'package:flutter_widget/view/widget/input/FormWidget.dart';
import 'package:flutter_widget/view/widget/input/RawKeyboardListenerWidget.dart';

///所有的文本输入部件
class InputPage extends StatefulWidget {
  ItemViewExplainBean data;

  InputPage(this.data);

  @override
  State<StatefulWidget> createState() {
    return InputState();
  }
}

class InputState extends BaseCodeState<InputPage> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

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
          ItemName("Form"),
          FormWidget(key),
          ItemName("FormField"),
          FormFieldWidget(),
          ItemName("RawKeyboardListener"),
          RawKeyboardListenerWidget(),
        ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
