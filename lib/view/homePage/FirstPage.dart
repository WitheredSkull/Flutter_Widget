import 'dart:math';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstState();
  }
}

class FirstState extends State<FirstPage> {
  var list = List<String>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      if (index >= list.length) {
        list.add(getNewData());
      }
      return InkWell(
        child: GestureDetector(
          onTap: () {
            print("点击");
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Text(getNewData()),
          ),
        ),
      );
    });
  }

  getNewData() => "随机数${Random().nextInt(100)}";
}
