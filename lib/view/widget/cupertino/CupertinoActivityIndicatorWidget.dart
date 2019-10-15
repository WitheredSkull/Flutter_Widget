import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

class CupertinoActivityIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CupertinoActivityIndicatorWidgetState();
  }
}

class CupertinoActivityIndicatorWidgetState
    extends State<CupertinoActivityIndicatorWidget> {
  bool isAnimal = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ///IOS的圆形旋转加载部件
        ///An iOS-style activity indicator. Displays a circular 'spinner'.
        CupertinoActivityIndicator(
          ///是否启动动画
          animating: isAnimal,

          ///动画半径
          radius: 15.0,
        ),
        SizedBox(
          width: 30,
        ),
        DefaultButton(isAnimal ? "暂定旋转" : "开始旋转", () {
          setState(() {
            isAnimal = !isAnimal;
          });
        })
      ],
    );
  }
}
