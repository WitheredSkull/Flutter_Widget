import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_widget/view/base/BaseState.dart';

class InfiniteListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InfiniteListState("动态无限列表", null);
  }
}

class InfiniteListState extends BaseState<InfiniteListPage> {
  InfiniteListState(String title, List<Widget> appbarActions)
      : super(title, appbarActions);
  final List<String> list = List();

  @override
  void initState() {
    list.add("0");
  }

  _getItem(var index) {
    list.add("ITEM $index");
    return Container(
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(4, 4),
            bottomRight: Radius.elliptical(4, 4)),
        color: Colors.lightBlue,
      ),
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(bottom: 4),
      child: Text(
        "ITEM $index",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  String initAppbarActions() {
    return null;
  }

  @override
  Widget initScaffoldBody() {
    return InkWell(
      onTap: (){

      },
      splashColor: Colors.greenAccent,
      highlightColor: Colors.lightBlue,
      child: RefreshIndicator(
          child: ListView.builder(
            itemBuilder: (context, index) => _getItem(index),
            itemCount: list.length,
          ),
          onRefresh: () async {
            setState(() {
              list.add("测试");
            });
            return null;
          }),
    );
  }
}
