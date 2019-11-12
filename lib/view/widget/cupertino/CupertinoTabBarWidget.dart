import 'package:flutter/cupertino.dart';

class CupertinoTabBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoTabBarWidgetState();
  }
}

class CupertinoTabBarWidgetState extends State<CupertinoTabBarWidget> {
  var choice = 0;

  @override
  Widget build(BuildContext context) {
    ///An iOS-style bottom tab bar. Typically used with CupertinoTabScaffold.
    ///一个IOS风格的底部标签栏
    return CupertinoTabBar(
      ///底部标签
      items: [
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.back), title: Text("左")),
        BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.forward), title: Text("右"))
      ],

      ///点击事件回调
      onTap: (value) {
        setState(() {
          choice = value;
        });
      },

      ///当前选中的是第几个标签
      currentIndex: choice,

      ///背景颜色
      backgroundColor: CupertinoColors.inactiveGray,

      ///正在活动的标签颜色
      activeColor: CupertinoColors.activeBlue,

      ///不活跃的标签颜色
      inactiveColor: CupertinoColors.white,

      ///标签Icon的大小
      iconSize: 24,

      ///标签栏的边框
      border: const Border(
          top: BorderSide(
              color: CupertinoColors.inactiveGray,
              width: 0.0,
              style: BorderStyle.solid)),
    );
  }
}
