import 'package:flutter/material.dart';

class SimpleDialogWidget {
  static void show(BuildContext context,
      {@required String title, @required String content}) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("关闭"),
              )
            ],
          );
        });
  }
}
