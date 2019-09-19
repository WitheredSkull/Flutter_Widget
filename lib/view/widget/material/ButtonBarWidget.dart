import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/SimpleDialogWidget.dart';

class ButtonBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///按钮水平排列
    ///A horizontal arrangement of buttons.
    return ButtonBar(
      ///要展示的队列方式
      alignment: MainAxisAlignment.spaceAround,

      ///控件主轴方向大小(横向轴，max代表占满横向所有控件，min代表children有多大就多大)
      mainAxisSize: MainAxisSize.max,

      ///默认下级的文本颜色
      buttonTextTheme: ButtonTextTheme.normal,

      ///按钮最小的宽度
      buttonMinWidth: 0,

      ///所有按钮的高度
      buttonHeight: 48,

      ///按钮的内边距
//      buttonPadding: EdgeInsets.all(10),
      ///按钮对齐下拉(用到了DropdownButton才会有用)
      buttonAlignedDropdown: false,

      ///自定义布局行为（可能会和alignment冲突，如果默认的alignment不能满足你才需要实现这个）
//      layoutBehavior: ,
      ///子Button
      children: <Widget>[
        MaterialButton(
          onPressed: () {
            _dialog(context);
          },
          child: Text(
            "ButtonBar",
          ),
        ),
        RaisedButton(
          onPressed: () {
            _dialog(context);
          },
          child: Text("ButtonBar"),
        ),
        MaterialButton(
          onPressed: () {
            _dialog(context);
          },
          child: Text("ButtonBar"),
        ),
        RaisedButton(
          onPressed: () {
            _dialog(context);
          },
          child: Text("ButtonBar"),
        ),
      ],
    );
  }

  _dialog(BuildContext context) {
    SimpleDialogWidget.show(context, title: "按钮", content: "感谢点击");
  }
}
