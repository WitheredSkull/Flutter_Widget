import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  final List<Map<String, dynamic>> list = [];

  ///媒体查询：主要是获取一系列屏幕信息，其次可以获取到一些给定的数据
  ///Establishes a subtree in which media queries resolve to the given data.
  @override
  Widget build(BuildContext context) {
    ///获取屏幕大小
    list.add({"size": MediaQuery.of(context).size});

    ///获取屏幕方向
    list.add({"orientation": MediaQuery.of(context).orientation});

    ///	用户是否使用TalkBack或VoiceOver等辅助功能服务与应用程序进行交互
    list.add(
        {"accessibleNavigation": MediaQuery.of(context).accessibleNavigation});

    ///是否使用的24小时制
    list.add({
      "alwaysUse24HourFormat": MediaQuery.of(context).alwaysUse24HourFormat
    });

    ///是否使用了粗体
    list.add({"boldText": MediaQuery.of(context).boldText});

    ///设备像素比例(像素比例*屏幕宽高=屏幕像素)
    list.add({"devicePixelRatio": MediaQuery.of(context).devicePixelRatio});

    ///是否禁用动画
    list.add({"disableAnimations": MediaQuery.of(context).disableAnimations});

    ///是否是高对比度模式
    list.add({"highContrast": MediaQuery.of(context).highContrast});

    ///是否是反色模式
    list.add({"invertColors": MediaQuery.of(context).invertColors});

    ///应用内容在屏幕内的Padding，比如大部分padding.top就是状态栏高度
    list.add({"padding": MediaQuery.of(context).padding});

    ///物理深度
    list.add({"physicalDepth": MediaQuery.of(context).physicalDepth});

    ///屏幕亮度
    list.add({"platformBrightness": MediaQuery.of(context).platformBrightness});

    ///指示可以捕获系统手势的区域的大小(Android系统的解释是从来防止某些应用具有边框手势冲突的= =，啥子玩意哦)
    list.add(
        {"systemGestureInsets": MediaQuery.of(context).systemGestureInsets});

    ///文字缩放因子
    list.add({"textScaleFactor": MediaQuery.of(context).textScaleFactor});

    ///视图挿入物 = . =
    list.add({"viewInsets": MediaQuery.of(context).viewInsets});

    ///当前视图的Padding
    list.add({"viewPadding": MediaQuery.of(context).viewPadding});
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              height: 40,
              child: Text(
                  "${list[index].keys.elementAt(0)}：${list[index].values.elementAt(0)}"),
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
