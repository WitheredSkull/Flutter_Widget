import 'package:flutter/cupertino.dart';

class CupertinoPopupSurfaceWidget {
  static showCupertinoPopupSurface(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          ///IOS样式的自定义弹窗
          ///Rounded rectangle surface that looks like an iOS popup surface, such as an alert dialog or action sheet.
          return CupertinoPopupSurface(
            ///是否开启表面涂抹
            isSurfacePainted: false,
            ///要显示的子部件
            child: Center(child: Text("CupertinoPopupSurface",style: CupertinoTheme.of(context).textTheme.textStyle,)),
          );
        });
  }
}
