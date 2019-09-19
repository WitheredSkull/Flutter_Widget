import 'dart:io';

import 'package:flutter/material.dart';

class ScrollBehaviorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///控制滚动的行为表现
    ///Controls how Scrollable widgets behave in a subtree.
    return ScrollConfiguration(
      ///设置滚动的行为表现(使用默认的是没有上下的滑动边界阴影的)
        behavior: ScrollBehavior(),
        ///子控件
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("ScrollBehavior$index"),
            );
          },
          itemCount: 10,
        ));
  }
}
