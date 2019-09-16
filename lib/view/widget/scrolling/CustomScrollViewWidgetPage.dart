import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomScrollViewWidgetPageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //因为没有背景和主题，所以创建一个MaterialApp
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollViewWidgetPage(context),
      ),
      color: Colors.white,
    );
  }
}

class CustomScrollViewWidgetPage extends StatefulWidget {
  BuildContext _buildContext;

  CustomScrollViewWidgetPage(this._buildContext);

  @override
  State<StatefulWidget> createState() {
    return CustomScrollViewWidgetPageState();
  }
}

class CustomScrollViewWidgetPageState
    extends State<CustomScrollViewWidgetPage> {
  ScrollController controller;

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///A ScrollView that creates custom scroll effects using slivers.
    ///使用滑块创建自定义滚动效果的滚动视图。
    return CustomScrollView(
      ///滚动方向
      scrollDirection: Axis.vertical,

      ///反向
      reverse: false,

      ///控制器
      controller: controller,

      ///没有找到源代码使用的地方，可以不实现
      primary: false,

      ///physics物理滚动
      physics: ScrollPhysics(),

      ///自动收缩
      shrinkWrap: false,

      ///它控制视图中对齐的[center]的位置。
//    center: ,
      ///锚,看起来像是打开时的间隔，但是字面意思看上去好像没那么简单
      anchor: 0.0,

      ///缓存的程度
      cacheExtent: 1,

      ///中间只能填充slivers组件
      slivers: <Widget>[
        ///顶部的头，需要自定义delegate
        SliverPersistentHeader(
          delegate: Header(),
          floating: true,
        ),

        ///AppBar
        SliverAppBar(
          pinned: true,
          title: Text("SliverAppBar"),
          elevation: 10,
          leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.of(widget._buildContext).pop();
            },
          ),
        ),

        ///列表
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return SizedBox(
                height: 50,
                child: Text(
                  "SliverList $index",
                ),
              );
            },
            childCount: 10,
          ),
        ),

        ///SliverPadding 可以让Sliver使用内边距
        SliverPadding(padding: EdgeInsets.only(top: 24)),

        ///网格
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Text("SliverGrid $index\n网格");
          }, childCount: 10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              childAspectRatio: 1,
              crossAxisSpacing: 0),
        ),

        ///SliverPadding 可以让Sliver使用内边距
        SliverPadding(
            padding: EdgeInsets.all(50),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 100,
                color: Colors.greenAccent,
                child: Center(
                  child: Text(
                    "SliverPadding\nEdgeInsets.all(50)",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )),

        ///SliverToBoxAdapter 一个占位的Box，里面可以随意放置Widget
        SliverToBoxAdapter(
          child: Material(
            color: Colors.pinkAccent,
            child: Text(
              "SliverToBoxAdapter\nBox占位的空间可以随意放置你想要的Widget",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        ///SliverFillRemaining 填补剩余的，基本是一页的空间
        SliverFillRemaining(
          child: Container(
            color: Colors.deepPurple,
            child: Center(
              child: Text(
                "SliverFillRemaining\n动态填补一页剩余的空间",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          hasScrollBody: true,
        ),

        ///SliverFillViewport占满一页的组件
        SliverFillViewport(
            delegate: SliverChildListDelegate([
          Container(
              color: Colors.lightBlueAccent,
              child: Center(child: Text("SliverFillViewport\n占满一页的组件"))),
          Container(
              color: Colors.yellowAccent,
              child: Center(child: Text("SliverFillViewport\n占满一页的组件"))),
        ]))
      ],
      semanticChildCount: 10,
      dragStartBehavior: DragStartBehavior.start,
    );
  }
}

class Header extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: double.infinity,
      color: Colors.brown,
      child: Padding(
        padding: EdgeInsets.only(top: 32, left: shrinkOffset),
        child: Text(
          "Header",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 120;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate){
    return oldDelegate.maxExtent != 500;
  }
}
