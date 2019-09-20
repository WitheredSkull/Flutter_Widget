import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/material/ButtonBarWidget.dart';
import 'package:flutter_widget/view/widget/material/DropdownButtonWidget.dart';
import 'package:flutter_widget/view/widget/material/FlatButtonWidget.dart';
import 'package:flutter_widget/view/widget/material/FloatingActionButtonWidget.dart';
import 'package:flutter_widget/view/widget/material/IconButtonWidget.dart';
import 'package:flutter_widget/view/widget/material/PopupMenuButtonWidget.dart';
import 'package:flutter_widget/view/widget/material/RaisedButtonWidget.dart';

class MaterialPage2 extends StatefulWidget {
  ItemViewExplainBean data;

  MaterialPage2(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaterialPage2State();
  }
}

class MaterialPage2State extends BaseCodeState<MaterialPage2> {
  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(
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
          ItemName("ButtonBar"),
          ButtonBarWidget(),
          ItemName("DropdownButton"),
          DropdownButtonWidget(),
          ItemName("FlatButton"),
          FlatButtonWidget(),
          ItemName("FloatingActionButton"),
          FloatingActionButtonWidget(),
          ItemName("IconButton"),
          IconButtonWidget(),
          ItemName("PopupMenuButton"),
          PopupMenuButtonWidget(),
          ItemName("RasiedButton"),
          RaisedButtonWidget(),
          SizedBox(height: APP.AssetsSize.PAGE_EXPANDED,)
        ],
      ),
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
