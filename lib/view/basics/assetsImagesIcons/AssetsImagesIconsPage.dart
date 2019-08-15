import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/assetsImagesIcons/AssetsWidget.dart';
import 'package:flutter_widget/view/widget/assetsImagesIcons/IconWidget.dart';
import 'package:flutter_widget/view/widget/assetsImagesIcons/ImageWidget.dart';
import 'package:flutter_widget/view/widget/assetsImagesIcons/RawImageWidget.dart';
import 'package:flutter_widget/view/widget/basic/PlaceholderWidget.dart';
import 'package:flutter_widget/view/widget/basic/RaisedButtonWidget.dart';
import 'package:flutter_widget/view/widget/basic/ScaffoldWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/RowWidget.dart';

///所有的图片展示部件
class AssetsImagesIconsPage extends StatefulWidget {
  ItemViewExplainBean data;

  AssetsImagesIconsPage(this.data);

  @override
  State<StatefulWidget> createState() {
    return AssetsImagesIconsPageState();
  }
}

class AssetsImagesIconsPageState extends BaseCodeState<AssetsImagesIconsPage> {
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
          ItemName("Assets"),
          AssetsWidget(),
          ItemName("Icon"),
          IconWidget(),
          ItemName("Image"),
          ImageWidget(),
          ItemName("Image"),
          RawImageWidget(),
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
