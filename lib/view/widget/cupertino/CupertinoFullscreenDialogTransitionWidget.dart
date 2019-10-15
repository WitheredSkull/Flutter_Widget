import 'package:flutter/cupertino.dart';

class CupertinoFullscreenDialogTransitionWidget {
  static showCupertinoFullscreenDialogTransition(
      BuildContext context, Animation<double> animation) {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          ///一个全屏风格的弹窗
          ///An iOS-style transition used for summoning fullscreen dialogs.
          return CupertinoFullscreenDialogTransition(
            ///展示全屏对话框的动画，可以通过动画控制是否全屏
              animation: animation,
              ///全屏的子部件
              child: CupertinoPageScaffold(
                child: Center(
                  child: Text("showCupertinoModalPopup"),
                ),
                backgroundColor: CupertinoColors.activeBlue,
              ));
        });
  }
}
