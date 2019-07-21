import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/view/container/Container1Center.dart';
import 'package:flutter_widget/view/list/InfiniteList.dart';
import 'package:flutter_widget/view/login/Login.dart';
import 'package:flutter_widget/view/widget/Item.dart';
import 'package:flutter_widget/view/widget/Rectangle.dart';

class BasicsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicsState();
  }
}

class BasicsState extends State<BasicsPage> {
  var list = List<String>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RectangleContainer(
          "视图容器",
          subtitle: "View the container",
          children: <Widget>[
            ItemView(
              "基础试图",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return Container1CenterPage();
                }));
              },
            )
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
