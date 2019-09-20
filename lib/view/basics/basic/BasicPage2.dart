import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/basic/FlutterLogoWidget.dart';
import 'package:flutter_widget/view/widget/basic/IconWidget.dart';
import 'package:flutter_widget/view/widget/assetsImagesIcons/ImageWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';

///所有的文本输入部件
class Basic2Page extends StatefulWidget {
  ItemViewExplainBean data;

  Basic2Page(this.data);

  @override
  State<StatefulWidget> createState() {
    return BasicState();
  }
}

class BasicState extends BaseCodeState<Basic2Page> {

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
              ItemName("FlutterLogo"),
              FlutterLogoWidget(),
              ItemName("Icon"),
              IconWidget(),
              ItemName("Image"),
              ImageWidget(),
              SizedBox(height: APP.AssetsSize.PAGE_EXPANDED,)
            ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
