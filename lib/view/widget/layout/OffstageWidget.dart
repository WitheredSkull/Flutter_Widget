import 'package:flutter/material.dart';

class OffstageWidget extends StatelessWidget {
  bool offstage = true;

  OffstageWidget(this.offstage);

  @override
  Widget build(BuildContext context) {
    ///控制子部件是否显示
    ///A widget that lays the child out as if it was in the tree, but without painting anything, without making the child available for hit testing, and without taking any room in the parent
    return Offstage(
      ///是否隐藏在前台界面，true隐藏,false显示
      offstage: offstage,
      child: Container(
        color: Colors.lightBlue,
        alignment: Alignment.center,
        height: 150,
        width: 200,
        child: Text("OffstageWidget",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
