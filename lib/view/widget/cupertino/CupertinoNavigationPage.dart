import 'package:flutter/cupertino.dart';

class CupertinoNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      ///基本的iOS风格的页面布局结构。将导航栏和内容放置在背景上。
      ///Basic iOS style page layout structure. Positions a navigation bar and content on a background.
    return CupertinoPageScaffold(
      ///背景颜色
      backgroundColor: CupertinoColors.lightBackgroundGray,
      ///是否应该调整大小以避免窗口的底部嵌入。(可以防止键盘重叠)
      resizeToAvoidBottomInset: true,
      ///显示的内容子部件
      child: Center(
        child: Text("CupertinoPageScaffold"),
      ),
      ///IOS风格的导航栏
      ///An iOS-style top navigation bar. Typically used with CupertinoPageScaffold.
      navigationBar: CupertinoNavigationBar(
        ///最前面显示的
        leading: CupertinoNavigationBarBackButton(
          previousPageTitle: "返回",
          color: CupertinoColors.activeBlue,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),

        ///最中间显示的
        middle: Text("CupertinoNavigationBar"),

        ///最后显示的
        trailing: Icon(CupertinoIcons.share),

        ///显示leading
        automaticallyImplyLeading: true,

        ///显示middle
        automaticallyImplyMiddle: true,

        ///之前的页面标题
        // previousPageTitle: "测试",
        ///边框
        border: Border(
          bottom: BorderSide(
            color: CupertinoColors.activeGreen,
            width: 0.0, // One physical pixel.
            style: BorderStyle.solid,
          ),
        ),

        ///背景
        backgroundColor: CupertinoColors.lightBackgroundGray,

        ///内边距
        padding: EdgeInsetsDirectional.only(),

        ///活动的前景颜色（就是按钮之类的的颜色）
        actionsForegroundColor: CupertinoColors.activeBlue,

        ///过渡动画
        transitionBetweenRoutes: true,

        ///这个动画用的
        // heroTag: ,
      ),
    );
  }
}
