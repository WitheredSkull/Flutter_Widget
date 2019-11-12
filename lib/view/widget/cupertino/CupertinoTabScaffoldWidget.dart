import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';

class CupertinoTabScaffoldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoTabScaffoldWidgetState();
  }
}

class CupertinoTabScaffoldWidgetState
    extends State<CupertinoTabScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    ///Tabbed iOS app structure. Positions a tab bar on top of tabs of content.
    ///IOS风格的页面，但是底部会有标签栏
    return CupertinoTabScaffold(
      ///底部标签栏，使用方式参考CupertinoTabBarWidget.dart
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.back), title: Text("左")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.forward), title: Text("右"))
        ],
        border: Border(
            top: BorderSide(color: CupertinoColors.inactiveGray, width: 1.0)),
      ),

      ///内容页面
      tabBuilder: (context, index) {
        ///Root content of a tab that supports parallel navigation between tabs. Typically used with CupertinoTabScaffold.
        ///痛标签栏Item同步，有多少个Item就有多少个CupertinoTabView
        return CupertinoTabView(
          builder: (context) {
            return Center(
                child: Text.rich(
              TextSpan(children: [
                TextSpan(text: "CupertinoTabScaffold $index\n"),
                TextSpan(
                    text: "Middle is BottomNavigationBarItem\n",
                    style: TextStyle(
                        fontSize: 30, color: Colors.red.withOpacity(0.6))),
                TextSpan(
                    text: "Blow is BottomNavigationBarItem",
                    style: TextStyle(
                        fontSize: 30, color: Colors.red.withOpacity(0.6))),
              ]),
              style: CupertinoTheme.of(context).textTheme.textStyle,
            ));
          },

          ///设置导航栏的key
//          navigatorKey: ,
          ///默认的标题
          defaultTitle: "标题",

          ///路由表
//          routes: ,
          ///路由跳转的回调
//          onGenerateRoute: ,
          ///onGenerateRoute无法生成路由时回调
//          onUnknownRoute: ,
          ///导航观察者列表
//          navigatorObservers: ,
        );
      },

      ///控制器
      controller: CupertinoTabController(),

      ///页面背景颜色
      backgroundColor: AssetsColor.COLOR_BACKGROUND,

      ///调整大小，以避免底部插页,防止键盘遮拦
      resizeToAvoidBottomInset: true,
    );
  }
}
