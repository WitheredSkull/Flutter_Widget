import 'package:flutter/material.dart';
import 'package:flutter_widget/view/utlis/CustomDelegate.dart';

class CustomSingleChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个可以使用外部委托实现自定义父部件和子部件位置和大小的部件
    ///A widget that defers the layout of its single child to a delegate.
    return CustomSingleChildLayout(
      /**委托类（需要自定义并且实现继承抽象类SingleChildLayoutDelegate，
       * SingleChildLayoutDelegate有几个回调方法，
       * 通过这几个回调方法控制部件的位置及其大小）
       */
      delegate: CustomDelegate(Size(100, 100)),
      ///子部件
      child: Container(
        color: Colors.lightBlue,
        alignment: Alignment.center,
        child: Text(
          "CustomSingleChildLayout\n自定义委托\nSize(100,100)",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
