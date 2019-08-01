import 'package:flutter/material.dart';
import 'package:flutter_widget/view/utlis/CustomFlowDelegate.dart';

class FlowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///可以自定义流失布局的部件
    ///A widget that implements the flow layout algorithm.
    return Flow(
      ///需要自定义实现委托
      delegate: CustomFlowDelegate(),
      ///需要排序的小部件
      children: <Widget>[
        Container(
          color: Colors.lightBlue,
          constraints: BoxConstraints(minWidth: 100,minHeight: 100),
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.red,
          constraints: BoxConstraints(minWidth: 100,minHeight: 100),
          width: 100,
          height: 100,
        ),
      ],
    );
  }
}
