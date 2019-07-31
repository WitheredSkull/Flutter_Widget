import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  ScrollController controller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      print("当前滑动到的ITEM${controller.position}");
    });

    ///一个可以布局子部件排列的部件，并且如果父部件高度不够可以滑动浏览子部件
    ///A widget that arranges its children sequentially along a given axis, forcing them to the dimension of the parent in the other axis.
    return ListView(
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

      ///单个Item的高度
      itemExtent: 40,

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
      ],
    );
  }
}
