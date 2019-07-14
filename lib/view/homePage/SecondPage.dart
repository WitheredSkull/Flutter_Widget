import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SecondState();
  }

}

class SecondState extends State<SecondPage>{
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[Positioned(child: Text("测试"))],);
  }

}