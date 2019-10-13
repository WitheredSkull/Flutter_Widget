import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';

class MaterialPage1 extends StatefulWidget {
  ItemViewExplainBean data;

  MaterialPage1(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaterialPage1State();
  }
}

class MaterialPage1State extends BaseCodeState<MaterialPage1>
    with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  List<String> tabs = ["TabView1", "TabView2"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return body();
  }

  @override
  Widget body() {
    ///Implements the basic Material Design visual layout structure. This class provides APIs for showing drawers, snack bars, and bottom sheets.
    return Scaffold(
      key: _globalKey,

      ///一个Material Design风格的顶部标题栏
      ///A Material Design app bar. An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar.
      appBar: AppBar(
        ///最前边显示的部件
        leading: GestureDetector(
          onTap: () {
            setState(() {
              print("点击");
              _globalKey.currentState.openDrawer();
            });
          },
          child: Icon(Icons.apps),
        ),

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
        bottom: TabBar(
          tabs: tabs.map((String name) => Tab(text: name)).toList(),
          controller: TabController(length: tabs.length, vsync: this),
        ),
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
      ),

      ///底部导航栏(至少要有两个ITEM，否则会报错)
      ///Bottom navigation bars make it easy to explore and switch between top-level views in a single tap. The BottomNavigationBar widget implements this component.
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        ///导航栏的ITEM
        BottomNavigationBarItem(

            ///ITEM的图标
            icon: Icon(Icons.arrow_back_ios),

            ///标题
            title: Text("左")),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward_ios), title: Text("右")),
      ]),

      ///左边的抽屉内容
      drawer: Container(
        width: 200,
        color: Colors.white,
        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          itemExtent: 50,
          children: <Widget>[
            ListTile(title: Text("左边抽屉的内容一")),
            ListTile(title: Text("左边抽屉的内容二")),
            ListTile(title: Text("左边抽屉的内容三")),
          ],
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ///水平选项卡
          ///A Material Design widget that displays a horizontal row of tabs.
          TabBar(
            ///文字颜色
            labelColor: Colors.black.withOpacity(0.7),
            tabs: [
              ///ITEM
              Tab(
                text: "TabBar1",
              ),
              Tab(
                text: "TabBar2",
              )
            ],

            ///控制器
            controller: TabController(
              ///ITEM数量
              length: 2,
              vsync: this,
            ),
          ),

          ///一个方便的类，它封装了许多应用程序通常需要的小部件。
          ///A convenience class that wraps a number of widgets that are commonly required for an application.
          WidgetsApp(
            ///生成一个路由
//            onGenerateRoute: (settings) {
//              return MaterialPageRoute(builder: (context) {
//                return HomePage();
//              });
//            },
            ///未知的路由
//          onUnknownRoute: ,
            ///导航观察者
//          navigatorObservers: ,
            ///默认初始化的路由（会在构建WidgetApp后构建默认路由）
//          initialRoute: ,
            ///页面路由构建
//          pageRouteBuilder: ,
            ///首页内容
//            home: Center(
//              child: Text("WidgetApp home",style: TextStyle(color: Colors.black)),
//            ),

            ///路由
//            routes: ,
            ///页面构建
            builder: (context, widget) {
              return Center(
                child: Text("WidgetApp home",style: TextStyle(color: Colors.black),),
              );
            },

            ///标题
            title: "WidgetApp title",
//            onGenerateTitle: (context) {
//              return "生成标题";
//            },

            ///文字样式
            textStyle: TextStyle(),

            ///颜色
            color: Colors.black,

            ///多语言
            locale: Locale("zh"),

            ///后面不作介绍了，用的很少
//            localizationsDelegates: ,
//            localeResolutionCallback: ,
//            localeListResolutionCallback: ,
//            supportedLocales: ,
//            showPerformanceOverlay: ,
//            checkerboardRasterCacheImages: ,
//            checkerboardOffscreenLayers: ,
//            showSemanticsDebugger: ,
//            debugShowWidgetInspector: ,
//            debugShowCheckedModeBanner: ,
//            inspectorSelectButtonBuilder: ,
          ),
        ],
      ),
    );
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
