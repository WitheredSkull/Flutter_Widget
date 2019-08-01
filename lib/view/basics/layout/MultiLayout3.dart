import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/layout/CustomMultiChildLayoutWidget.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/layout/IndexedStackWidget.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/view/widget/layout/LayoutBuilderWidget.dart';
import 'package:flutter_widget/view/widget/layout/StackWidget.dart';
import 'package:flutter_widget/view/widget/layout/TableWidget.dart';

class Multi3Layout extends StatefulWidget {
  ItemViewExplainBean data;

  Multi3Layout(this.data);

  @override
  State<StatefulWidget> createState() {
    return LayoutState();
  }
}

class LayoutState extends BaseCodeState<Multi3Layout> {
  var isShowFirst = true;

  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Explan(
            widget.data.title,
            marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
            children: <Widget>[
              Text(widget.data.subtitle),
              Text(widget.data.explain)
            ],
          ),
          ItemName("Stack"),
          Container(
            width: 180,
            height: 180,
            color: Colors.white,
            child: StackWidget(),
          ),
          ItemName("Table"),
          TableWidget(),
          ItemName("IndexedStack"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                width: 180,
                height: 180,
                color: Colors.white,
                child: IndexedStackWidget(isShowFirst),
              ),
              SizedBox(
                width: 12,
              ),
              MaterialButton(
                color: Colors.lightBlue,
                onPressed: () {
                  setState(() {
                    isShowFirst = !isShowFirst;
                  });
                },
                child: Text(
                  "显示第${isShowFirst ? 0 : 1}个",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
          ItemName("LayoutBuilder"),
          Container(
            width: 150,
            height: 150,
            color: Colors.white,
            child: LayoutBuilderWidget(),
          ),
          ItemName("CustomMulitChildLayout"),
          Container(
            width: 120,
            height: 240,
            alignment: Alignment.topCenter,
            color: Colors.white,
            child: CustomMultiChildLayoutWidget(),
          ),
          SizedBox(
            height: 48,
          ),
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
