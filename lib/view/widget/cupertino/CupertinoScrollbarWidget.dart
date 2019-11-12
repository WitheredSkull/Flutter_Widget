import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/material/ListTileWidget.dart';

class CupertinoScrollbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///An iOS-style scrollbar that indicates which portion of a scrollable widget is currently visible.
    ///一个ios风格的滚动条，指示当前可滚动小部件的哪个部分是可见的。
    return CupertinoScrollbar(
      ///内容子部件
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 40,
            child: Text(
              "CupertinoScrollbar Item $index",
              style: Theme.of(context).textTheme.title,
            ),
          );
        },
        itemCount: 10,
      ),
      ///控制器
      controller: ScrollController(),
    );
  }
}
