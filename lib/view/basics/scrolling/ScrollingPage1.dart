import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/scrolling/CustomScrollViewWidgetPage.dart';

class ScrollingPage1 extends StatefulWidget {
  ItemViewExplainBean data;

  ScrollingPage1(this.data);

  @override
  State<StatefulWidget> createState() {
    return ScrollingPage1State();
  }
}

class ScrollingPage1State extends BaseCodeState<ScrollingPage1>{

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
          ItemName("AnimatedBuild"),
          DefaultButton("CustomScrollView", (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return CustomScrollViewWidgetPageApp();
            }));
          })
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
