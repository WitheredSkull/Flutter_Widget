import 'package:flutter/material.dart';
import 'package:flutter_widget/view/utlis/CustomMultiChildLayoutDelegate.dart';

class CustomMultiChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///使用委托来调整多个子元素的大小和位置(具体写法参照DEMO，
    ///但是个人觉得写了那么多的delegate，
    ///实际上这些事情你使用布局嵌套能够更快解决，
    ///但是使用delegate的话：没有层级嵌套是可以更高效的)
    ///A widget that uses a delegate to size and position multiple children.
    return CustomMultiChildLayout(
      ///自定义多部件委托
      delegate: CustomMultiChildLayoutDelegate(),

      ///子部件
      children: <Widget>[
        ///因为委托没有直接过去child的方法，所以使用LayoutId获取Child
        LayoutId(
            id: CustomMultiChildLayoutDelegate.id1,
            child: Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.lightBlue,
              child: Text(
                "起始位置修改为：x:父部件宽度-子部件宽度\ny:0",
                style: TextStyle(color: Colors.white),
              ),
            )),
        LayoutId(
          id: CustomMultiChildLayoutDelegate.id2,
          child: Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: Text(
              "起始位置修改为：x:0\ny:上一个部件的底部+20",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
