import 'package:flutter/material.dart';
import 'package:flutter_widget/view/login/Login.dart';
import 'package:flutter_widget/view/widget/custom/Item.dart';
import 'package:flutter_widget/view/widget/custom/Rectangle.dart';

class DecodePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DecodeState();
  }
}

class DecodeState extends State<DecodePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RectangleContainer(
          "FROM",
          subtitle: "利用表单实现的一个登录页",
          children: <Widget>[
            ItemView(
              "FROM",
              subtitle: "利用表单实现的一个登录页",
              onTap: _startLoginPage,
            ),
          ],
        )
      ],
    );
  }

  _startLoginPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
}
