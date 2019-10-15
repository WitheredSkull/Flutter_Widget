import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class CupertinoPage4 extends StatefulWidget {
  ItemViewExplainBean data;

  CupertinoPage4(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoPage4State();
  }
}

class CupertinoPage4State extends BaseCodeState<CupertinoPage4> {

  @override
  bool isIos() =>true;

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
          ItemName("CheckBox"),
        ]));
  }

  @override
  void initData() {
  }

  @override
  String title() {
    return widget.data.title;
  }
}
