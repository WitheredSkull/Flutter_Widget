import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/animationMotion/HeroWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/interactions/NavigatorUse.dart';

class RoutingPage extends StatefulWidget {
  ItemViewExplainBean data;

  RoutingPage(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RoutingPageState();
  }
}

class RoutingPageState extends BaseCodeState<RoutingPage> {
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
      ItemName("Hero"),
      HeroWidget(),
      SizedBox(
        height: APP.AssetsSize.PAGE_EXPANDED,
      ),
      ItemName("Navigator"),
      DefaultButton("Navigator", () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return NavigatorUse();
        }));
      })
    ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
