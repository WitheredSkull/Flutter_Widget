import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/view/list/InfiniteListPage.dart';
import 'package:flutter_widget/view/login/Login.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstState();
  }
}

class FirstState extends State<FirstPage> {
  var list = List<String>();
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _getItem(
            text: "ListView无限循环",
            onTap: () {
              _startInfiniteListPage();
            }),
        _getItem(
            text: "Form Login",
            onTap: () {
              _startLoginPage();
            }),
        RaisedButton(onPressed: (){
          _key.currentState.save();
        },child: Text("点击"),)
      ],
    );
  }

  _getItem({String text, GestureTapCallback onTap}) {
    return InkWell(
      splashColor: Colors.lightBlue.withOpacity(0.3),
      highlightColor: Colors.lightBlue,
      onTap: onTap,
      child: Stack(
        children: <Widget>[
          Container(
            height: 52,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: Colors.lightBlue.withOpacity(0.3)),
          ),
          Container(
            height: 44,
            alignment: Alignment.bottomLeft,
            color: Colors.lightBlue,
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  _startInfiniteListPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return InfiniteListPage();
      }));

  _startLoginPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
  getNewData() => "随机数${Random().nextInt(100)}";
}
