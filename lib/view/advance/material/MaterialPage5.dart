import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/assetsImagesIcons/ImageWidget.dart';
import 'package:flutter_widget/view/widget/basic/IconWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/layout/GridViewWidget.dart';
import 'package:flutter_widget/view/widget/material/CardWidget.dart';
import 'package:flutter_widget/view/widget/material/ChipWidget.dart';
import 'package:flutter_widget/view/widget/material/CircularProgressIndicatorWidget.dart';
import 'package:flutter_widget/view/widget/material/DataTableWidget.dart';
import 'package:flutter_widget/view/widget/material/LinearPregressIndicatorWidget.dart';
import 'package:flutter_widget/view/widget/material/TooltipWidget.dart';

class MaterialPage5 extends StatefulWidget {
  ItemViewExplainBean data;

  MaterialPage5(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaterialPage5State();
  }
}

class MaterialPage5State extends BaseCodeState<MaterialPage5> {
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
        ItemName("Card"),
        CardWidget(),
        ItemName("Chip"),
        ChipWidget(),
        ItemName("CircularProgressIndicator"),
        CircularProgressIndicatorWidget(),
        ItemName("DataTable"),
        DataTableWidget(),
        ItemName("GridView"),
        GridViewWidget(),
        ItemName("Icon"),
        IconWidget(),
        ItemName("Image"),
        ImageWidget(),
        ItemName("LinearProgressIndicator"),
        LinearProgressIndicatorWidget(),
        ItemName("Tooltip"),
        TooltipWidget(),
        SizedBox(
          height: APP.AssetsSize.PAGE_EXPANDED,
        )
      ]),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }

  @override
  String title() {
    // TODO: implement title
    return widget.data.title;
  }
}
