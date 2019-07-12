import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  final title = "启动页";
  var context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return MaterialApp(
      title: title,
      home: _getHome(),
    );
  }

  _getHome() => Scaffold(
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
