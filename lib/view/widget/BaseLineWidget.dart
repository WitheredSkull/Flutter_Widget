import 'package:flutter/material.dart';

class BaseLineWidget extends StatelessWidget {
  @override

  ///此部件会让子部件根据基线(baseline)定位位置
  ///A widget that positions its child according to the child's baseline.
  Widget build(BuildContext context) {
    return Baseline(
      ///基线距离顶部的位置
      baseline: 10,
      ///基线对齐的类型：TextBaseline.alphabetic(按照字母),TextBaseline.ideographic(按照文字)
      baselineType: TextBaseline.ideographic,
      ///子部件
      child: Text(
        "BaseLine",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
