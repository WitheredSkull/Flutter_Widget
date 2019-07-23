import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/view/container/Layout.dart';
import 'package:flutter_widget/view/list/InfiniteList.dart';
import 'package:flutter_widget/view/widget/Item.dart';
import 'package:flutter_widget/view/widget/Rectangle.dart';
import 'package:flutter_widget/application/WidgetData.dart' as WidgetData;

class BasicsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicsState();
  }
}

class BasicsState extends State<BasicsPage> {
  var list = List<String>();
  int layoutHalf = (WidgetData.LAYOUT.length ~/ 3).toInt();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RectangleContainer(
          "视图容器",
          subtitle: "View the container",
          children: <Widget>[
            ItemView(
              "单个子布局控件(壹)",
              beHindText: "Single-child layout widgets",
              subtitle:
                  "${WidgetData.LAYOUT.sublist(0, layoutHalf)}",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return LayoutPage(
                    title: "布局",
                  );
                }));
              },
            ),
            ItemView(
              "单个子布局控件(贰)",
              beHindText: "Single-child layout widgets",
              subtitle:
                  "${WidgetData.LAYOUT.sublist(layoutHalf, layoutHalf * 2)}",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return LayoutPage(
                    title: "布局",
                  );
                }));
              },
            ),
            ItemView(
              "单个子布局控件(叁)",
              beHindText: "Single-child layout widgets",
              subtitle:
                  "${WidgetData.LAYOUT.sublist(layoutHalf*2, WidgetData.LAYOUT.length)}",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return LayoutPage(
                    title: "布局",
                  );
                }));
              },
            ),
          ],
        ),
        RectangleContainer(
          "一个无限列表",
          children: <Widget>[
            ItemView("ListView无限循环", subtitle: "测试", onTap: () {
              _startInfiniteListPage();
            }),
          ],
        )
      ],
    );
  }

  _startInfiniteListPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return InfiniteListPage();
      }));

  getNewData() => "随机数${Random().nextInt(100)}";
}
