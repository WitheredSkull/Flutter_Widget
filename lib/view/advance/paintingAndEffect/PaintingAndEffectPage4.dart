import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/PaddingWidget.dart';
import 'package:flutter_widget/view/widget/paintingAndEffects/BackdropFilterWidget.dart';
import 'package:flutter_widget/view/widget/paintingAndEffects/ClipOvalWidget.dart';
import 'package:flutter_widget/view/widget/styling/MediaQueryWidget.dart';
import 'package:flutter_widget/view/widget/styling/ThemeWidget.dart';

///所有的文本部件
class PaintingAndEffectPage4 extends StatefulWidget {
  ItemViewExplainBean data;

  PaintingAndEffectPage4(this.data);

  @override
  State<StatefulWidget> createState() {
    return PaintingAndEffectPage4State();
  }
}

class PaintingAndEffectPage4State
    extends BaseCodeState<PaintingAndEffectPage4> {
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
        ItemName("BackdropFilter"),
        SizedBox(
          width: 100,
          height: 100,
          child: BackdropFilterWidget(),
        ),
        ItemName("ClipOval"),
        ClipOvalWidget(),
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
