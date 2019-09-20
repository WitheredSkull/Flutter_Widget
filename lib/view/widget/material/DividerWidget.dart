import 'package:flutter/material.dart';

import 'ListTileWidget.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTileWidget(),

            ///一个逻辑像素厚的水平线
            ///A one logical pixel thick horizontal line, with padding on either side.
            Divider(
              ///线条高度
              height: 2,

              ///厚度
              thickness: 4,

              ///首部缩进
              indent: 10,

              ///尾部缩进
              endIndent: 10,

              ///线条的颜色
              color: Colors.black45,
            ),
          ],
        );
      },
      shrinkWrap: true,
      itemCount: 4,
    );
  }
}
