import 'package:flutter/material.dart';

class NestedScrollViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///其中的滚动视图可以嵌套其他滚动视图，它们的滚动位置本质上是链接的
    ///A scrolling view inside of which can be nested other scrolling views, with their scroll positions being intrinsically linked
    return NestedScrollViewWidgetState();
  }
}

class NestedScrollViewWidgetState extends State<NestedScrollViewWidget>
    with TickerProviderStateMixin {
  ScrollPhysics physics = ScrollPhysics();
  List<String> _tabs = ["测试1", "测试2"];

  @override
  Widget build(BuildContext context) {
    ///
    return DefaultTabController(
      ///Tab数量
      length: _tabs.length, // This is the number of tabs.
      child: NestedScrollView(
        ///滑动控制器
        controller: ScrollController(),

        ///滑动方向
        scrollDirection: Axis.vertical,

        ///方向
        reverse: false,

        ///物理加速
        physics: ScrollPhysics(),

        ///头部构建
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          // These are the slivers that show up in the "outer" scroll view.
          return <Widget>[
            ///重叠器，官方写法
            SliverOverlapAbsorber(
              ///处理者
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),

              ///真正的头部
              child: SliverAppBar(
                title: const Text('NestedScrollView'),

                ///是否不可以被压出屏幕
                pinned: false,

                ///伸展的高度（这个高度是会随着你的滑动收缩的）
                expandedHeight: 100.0,

                ///不太明白干啥的
                forceElevated: innerBoxIsScrolled,

                ///底部（必须是导入了PreferredSizeWidget接口的部件，比如Tab）
                bottom: TabBar(
                  tabs: _tabs.map((String name) => Tab(text: name)).toList(),
                ),
              ),
            ),
          ];
        },

        ///主要躯干内容
        body: TabBarView(
          ///子部件
          children: _tabs.map((String name) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverFixedExtentList(
                    itemExtent: 48.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return ListTile(
                          title: Text('Item $index'),
                        );
                      },
                      childCount: 30,
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
