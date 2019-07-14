import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ThirdState();
  }

}

class ThirdState extends State<ThirdPage>{
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[Positioned(child: Text("测试"))],);
  }

}