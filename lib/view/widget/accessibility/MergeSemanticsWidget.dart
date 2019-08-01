import 'package:flutter/material.dart';

class MergeSemanticsWidget extends StatelessWidget {
  ///合并所有子部件成为一个语义
  ///A widget that merges the semantics of its descendants.
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MergeSemantics(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _getItem("第一个"),
          _getItem("第二个"),
          _getItem("第三个"),
        ],
      ),
    );
  }

  _getItem(String text) => Container(
        margin: EdgeInsets.only(bottom: 2),
        width: 240,
        height: 44,
        alignment: Alignment.center,
        color: Colors.deepPurpleAccent,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      );
}
