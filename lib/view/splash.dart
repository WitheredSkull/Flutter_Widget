import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash> {
  final title = "启动页";

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pop(this.context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: _getHome(context),
    );
  }

  _getHome(BuildContext context) => Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text(title),
          actions: <Widget>[
            InkWell(
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_forward,
                  ),
                ),
              ),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                textTheme: ButtonTextTheme.primary,
                shape: CircleBorder(),
                child: Text(
                  "进入程序",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              left: 0,
              right: 0,
              bottom: 44,
            )
          ],
        ),
      );
}
