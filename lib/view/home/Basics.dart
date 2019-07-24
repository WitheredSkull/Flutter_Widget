import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/presenter/BasicsPresenter.dart';
import 'package:flutter_widget/view/container/Layout.dart';
import 'package:flutter_widget/view/list/InfiniteList.dart';
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
  BasicsPresenter presenter;

  @override
  void initState() {
    super.initState();
    presenter = BasicsPresenter();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RectangleContainer(
          "视图容器",
          subtitle: "View the container",
          children: <Widget>[
            ItemView(
              presenter.itemData[0].title,
              beHindText: presenter.itemData[0].behindTitle,
              subtitle:
              presenter.itemData[0].subtitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return LayoutPage(
                    presenter.itemData[0],
                  );
                }));
              },
            ),
            ItemView(
              presenter.itemData[1].title,
              beHindText: presenter.itemData[1].behindTitle,
              subtitle:
              presenter.itemData[1].subtitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return LayoutPage(
                    presenter.itemData[1],
                  );
                }));
              },
            ),
            ItemView(
              presenter.itemData[2].title,
              beHindText: presenter.itemData[2].behindTitle,
              subtitle:
              presenter.itemData[2].subtitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return LayoutPage(
                    presenter.itemData[2],
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
