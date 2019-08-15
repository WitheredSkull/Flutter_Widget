import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个基于Material Design的布局结构部件，如果你要使用它，需要是一个新的页面，而不是一个页面Widget树中的一个部件，否则会报错
    ///Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.
    return Scaffold(
      ///顶部标题栏
      appBar: AppBar(
        title: Text("Scaffold"),
      ),

      ///内容（除了标题栏和底部导航栏基本都是内容的控件）
      body: Center(
        child: Text("Center"),
      ),

      ///设置一个Material Design风格的浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton");
        },
        child: Text("浮动"),
      ),

      ///浮动按钮的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

      ///浮动按钮的动画
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,

      ///类似于Word文档的页脚，在内容的右下角
      persistentFooterButtons: <Widget>[
        Text("页脚"),
      ],

      ///左边的抽屉内容
      drawer: Container(
        width: 200,
        color: Colors.white,
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          itemExtent: 50,
          children: <Widget>[
            Text("左边抽屉的内容一"),
            Text("左边抽屉的内容二"),
            Text("左边抽屉的内容三"),
          ],
        ),
      ),

      ///右边的抽屉内容
      endDrawer: Container(
        width: 200,
        alignment: Alignment.center,
        color: Colors.white,
        child: ListView(
          itemExtent: 50,
          shrinkWrap: true,
          children: <Widget>[
            Text(
              "右边抽屉的内容一",
              textAlign: TextAlign.end,
            ),
            Text(
              "右边抽屉的内容二",
              textAlign: TextAlign.end,
            ),
            Text(
              "右边抽屉的内容三",
              textAlign: TextAlign.end,
            ),
          ],
        ),
      ),

      ///底部导航栏(至少要有两个ITEM，否则会报错)
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back_ios), title: Text("左")),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward_ios), title: Text("右")),
      ]),

      ///最底部显示的部件，会一直留在可视化的最底部，比如你的键盘弹出来了，这个部件会在你的键盘之上
      bottomSheet: BottomSheet(
          onClosing: () {},
          builder: (context) {
            return Container(
              child: Row(
                verticalDirection: VerticalDirection.up,
                children: <Widget>[
                  Expanded(child: TextField()),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("发送"),
                    color: Colors.lightBlue,
                  )
                ],
              ),
            );
          }),

      ///Scaffold的背景颜色
      backgroundColor: Colors.white,

      ///调整大小以避免底部填充
      resizeToAvoidBottomPadding: true,

      ///调整大小以避免底部插入其他部件
      resizeToAvoidBottomInset: true,

      ///他可以决定顶部的Padding，默认为true
      primary: true,

      ///抽屉拖动启动行为
      drawerDragStartBehavior: DragStartBehavior.down,

      ///扩展Body(Body会稍微多一点空间)
      extendBody: true,

      ///抽屉的背景色
      drawerScrimColor: Colors.black.withOpacity(0.3),
    );
  }
}
