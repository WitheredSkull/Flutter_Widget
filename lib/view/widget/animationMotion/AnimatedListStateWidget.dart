import 'package:flutter/material.dart';

class AnimatedListStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatedListStateState();
  }
}

class AnimatedListStateState extends State<AnimatedListStateWidget>
    with SingleTickerProviderStateMixin {
  int itemCount = 3;
  GlobalKey<AnimatedListState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ///滚动容器的状态，当插入或删除项时，滚动容器将使项具有动画效果。
    ///The state for a scrolling container that animates items when they are inserted or removed.
    return Column(
      children: <Widget>[
        MaterialButton(
          onPressed: () {
            setState(() {
              _key.currentState.insertItem(0, duration: Duration(seconds: 2));
            });
          },
          child: Text(
            "点击增加Item",
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.purple,
        ),
        AnimatedList(
          ///AnimatedList的Key
          key: _key,

          ///展示每一个Item的构建器
          itemBuilder:
              (BuildContext context, int index, Animation<double> animation) {
            ///你会发现这个构建器传过来了一个animation，你可以通过这个去做增加删除Item的动画
            return AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Padding(
                  padding: EdgeInsets.all(animation.value * 10),
                  child: Text("这是第$index"),
                );
              },
            );
          },

          ///初始化Item数量
          initialItemCount: itemCount,

          ///滑动方向
          scrollDirection: Axis.vertical,

          ///是否是反向的
          reverse: false,

          ///滑动控制器
//          controller,
          ///是否是与父视图关联的主滚动视图
          primary: true,

          ///滑动响应用户操作效果
//          physics:ScrollPhysics,
          ///是否自动收缩控件
          shrinkWrap: true,

          ///内边距
          padding: EdgeInsets.all(0),
        ),
      ],
    );
  }
}
