import 'package:flutter/material.dart';

class AdvancePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AdvanceState();
  }

}

class AdvanceState extends State<AdvancePage>{
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[Positioned(child: Text("测试"))],);
  }

}