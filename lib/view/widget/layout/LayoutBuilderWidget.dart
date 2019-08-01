import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///构建一个部件树,会有父部件的constraints传递过来，而你只需要实现一个返回值为Widget的函数即可
    ///Builds a widget tree that can depend on the parent widget's size.
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        ///继承父布局的constraints来控制自身大小
        constraints: constraints,
        color: Colors.lightBlue,
        alignment: Alignment.center,
        child: Text(
          "Container大小为父部件大小:\n180,180",
          style: TextStyle(color: Colors.white),
        ),
      );
    });
  }
}
