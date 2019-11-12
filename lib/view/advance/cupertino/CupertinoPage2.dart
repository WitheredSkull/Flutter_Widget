import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoAlertDialogWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoDatePickerWidget.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoFullscreenDialogTransitionWidget.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class CupertinoPage2 extends StatefulWidget {
  ItemViewExplainBean data;

  CupertinoPage2(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoPage2State();
  }
}

class CupertinoPage2State extends BaseCodeState<CupertinoPage2>
    with SingleTickerProviderStateMixin {
  @override
  bool isIos() => true;
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween(begin: 0.1, end: 0.5).animate(controller);
  }

  @override
  Widget body() {
    return SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Explan(
        widget.data.title,
        marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
        children: <Widget>[
          Text(widget.data.subtitle),
          Text(widget.data.explain)
        ],
      ),
      ItemName("CupertinoDatePicker"),
      DefaultButton("show CupertinoDatePicker", () {
        CupertinoDatePickerWidget.showCupertinoDatePicker(context);
      }),
      ItemName("CupertinoDialog"),
      Text(
        """@Deprecated('Use CupertinoAlertDialog for alert dialogs. Use CupertinoPopupSurface for custom popups.')""",
        style: CupertinoTheme.of(context).textTheme.textStyle,
      ),
      ItemName("CupertinoDialogAction"),
      DefaultButton("show CupertinoDialogAction", () {
        CupertinoAlertDialogWidget.showCupertinoAlertDialog1(context);
      }),
      ItemName("CupertinoFullscreenDialogTransition"),
      DefaultButton("show CupertinoFullscreenDialogTransition", () {
        CupertinoFullscreenDialogTransitionWidget
            .showCupertinoFullscreenDialogTransition(context, animation);
        if (!animation.isCompleted) {
          controller.forward();
        } else {
          controller.reset();
          controller.forward();
        }
      }),
//          CupertinoNavigationBar(middle: Text("测试"),)
    ]));
  }

  @override
  void initData() {}

  @override
  String title() {
    return widget.data.title;
  }
}
