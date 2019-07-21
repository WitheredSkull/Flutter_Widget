import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  String title;
  List<Widget> appbarActions;

  BaseState(this.title, this.appbarActions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(title),
        backgroundColor: Colors.lightBlue,
        actions: appbarActions != null ? appbarActions : List(),
      ),
      body: initScaffoldBody(),
    );
  }

  String initAppbarActions();

  Widget initScaffoldBody();
}
