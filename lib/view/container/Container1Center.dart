import 'package:flutter/material.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';

class Container1CenterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Container1CenterState(isEnableCode: true);
  }
}

class Container1CenterState extends BaseCodeState<Container1CenterPage> {
  @override
  Widget body() {
    return Center(
      child: Text("测试"),
    );
  }

  Container1CenterState(
      {String path, String copeContent, bool isEnableCode=false})
      : super(
            path: path,
            copeContent: copeContent,
            isEnableCode: isEnableCode);
}
