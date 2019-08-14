import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个Material Design风格的顶部标题栏
    ///A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.
    return AppBar(
      ///最前边显示的部件
      leading: Icon(Icons.arrow_back_ios),

      ///自动判断，如果没有leading将给Title更多的空间
      automaticallyImplyLeading: true,

      ///标题
      title: Text("Appbar"),

      ///右边填充部件并且可以自定义部件事件
      actions: <Widget>[Icon(Icons.add), Icon(Icons.unfold_more)],

      ///弹性空间,可以随意摆放空间
      flexibleSpace: Center(
        child: Text(
          "弹性空间展示一段居中的文本",
          style: TextStyle(color: Colors.white),
        ),
      ),

      ///展示在底部
//      bottom: ,
      elevation: 500,

      ///绘制形状
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

      ///背景色
      backgroundColor: Colors.deepPurple,

      ///亮度
      brightness: Brightness.dark,

      ///因为Appbar中包含多个Icon，这里可以指定Icon的主题样式
      iconTheme: IconThemeData(color: Colors.white, size: 40),

      ///同上，只是可以单独设置actions的主题
      actionsIconTheme: IconThemeData(color: Colors.greenAccent),
      textTheme: TextTheme(
          title: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 16,
              fontWeight: FontWeight.bold)),

      /// Whether this app bar is being displayed at the top of the screen.
      ///
      /// If true, the app bar's toolbar elements and [bottom] widget will be
      /// padded on top by the height of the system status bar. The layout
      /// of the [flexibleSpace] is not affected by the [primary] property.
      primary: true,

      ///标题是否居中，不居中则会展示在leading后面
      centerTitle: false,

      ///距离leading的距离
      titleSpacing: -20,

      ///工具栏内容的不透明度
      toolbarOpacity: 0.5,

      ///工具栏底部的bottom的透明度
      bottomOpacity: 0.5,
    );
  }
}
