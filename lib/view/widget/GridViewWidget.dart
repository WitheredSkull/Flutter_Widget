import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  ScrollController controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    ///可滑动网格排列小部件
    ///A grid list consists of a repeated pattern of cells arrayed in a vertical and horizontal layout. The GridView widget implements this component.
    return GridView(

        ///网格布局委托
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          ///交叉轴可以展示的最大ITEM数量
          crossAxisCount: 2,

          ///交叉轴间距
          crossAxisSpacing: 5,

          ///主轴间距
          mainAxisSpacing: 5,
        ),

        ///排序方向
        scrollDirection: Axis.vertical,

        ///是否倒叙排列
        reverse: false,

        ///ListView的控制器(设置了这里primary必须为flase，否则会冲突)
        controller: controller,
        primary: false,

        ///滚动物理效果，需要自己实现可以使用
        physics: ScrollPhysics(),

        ///尽可能搜索ListView部件大小
        shrinkWrap: true,

        ///内边距
        padding: EdgeInsets.all(20),

        ///销毁时自动保存数据
        addAutomaticKeepAlives: true,

        ///滚动到之前的ITEM时重新绘制
        addRepaintBoundaries: true,

        ///添加ITEM索引
        addSemanticIndexes: true,

        ///同时缓存多少个ITEM
        cacheExtent: 2,

        ///子部件统计(默认是不用做的)
//      semanticChildCount: 4,
        ///拖动行为
//      dragStartBehavior: DragStartBehavior.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Text("可滑动1"),
            margin: EdgeInsets.only(bottom: 1),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Text("可滑动2"),
            margin: EdgeInsets.only(bottom: 1),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Text("可滑动3"),
            margin: EdgeInsets.only(bottom: 1),
          ),
        ]);
  }
}
