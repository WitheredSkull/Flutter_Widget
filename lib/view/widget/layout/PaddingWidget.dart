import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///A widget that insets its child by the given padding.
    ///内边距调整部件
    return Padding(
      ///内边距
      padding: EdgeInsets.only(top: 20, left: 40, bottom: 20, right: 40),
      ///子部件
      child: Text("Padding(内边距-->>\ntop: 20, left: 40, bottom: 20, right: 40)"),
    );
  }
}
