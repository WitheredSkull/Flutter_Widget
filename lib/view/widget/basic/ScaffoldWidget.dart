import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
      ),
      body: Center(
        child: Text("Center"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton");
        },
        child: Text("FloatingActionButton"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      persistentFooterButtons: <Widget>[
        Text("1"),
        Text("2"),
      ],
      drawer: Icon(Icons.ac_unit),
      endDrawer: Icon(Icons.build),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back_ios),title: Text("底部按钮1")),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back_ios),title: Text("底部按钮2")),
      ]),
      bottomSheet: BottomSheet(onClosing: () {}, builder: (context) {
        return Container(color: Colors.purpleAccent,
          child: Column(children: <Widget>[Text("测试1"), Text("测试2")],),);
      }),
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      primary: true,
//      drawerDragStartBehavior: ,
      extendBody: true,
      drawerScrimColor: Colors.brown,
    );
  }
}
