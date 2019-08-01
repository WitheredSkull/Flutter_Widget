import 'package:flutter/material.dart';

class SemanticsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一堆可达性分析的功能
    ///A widget that annotates the widget tree with a description of the meaning of the widgets. Used by accessibility tools, search engines, and other semantic analysis software to determine the meaning of the application.
    return Semantics(
      ///是否是容器
      container: false,

      ///外显子节点
      explicitChildNodes: true,

      ///排除语义树
      excludeSemantics: false,

      ///开关
      enabled: false,

      ///选中
      checked: false,

      ///选择
      selected: false,

      ///切换状态
      toggled: true,

      ///是否是按钮
      button: true,

      ///是否是头部
      header: false,

      ///是否是输入框
      textField: false,

      ///是否为只读
      readOnly: true,

      ///是否自动获取焦点
      focused: true,

      ///彼此互斥
      inMutuallyExclusiveGroup: true,

      ///隐藏的
      obscured: false,

      ///显示范围
      scopesRoute: true,

      ///显示名称或者文字
      namesRoute: true,

      ///是否是隐藏的
      hidden: false,

      ///是否是图片
      image: false,

      ///显示活动区域
      liveRegion: true,

      ///无障碍的标签
      label: "Flutter",

      ///无障碍的内容
      value: "Flutter的无障碍功能",

      ///增大音量
      increasedValue: "增大音量",

      ///减小音量
      decreasedValue: "减小音量",

      ///隐藏的
      hint: "隐藏",

      ///点击提示
      onTapHint: "点击提示",

      ///长按提示
      onLongPressHint: "长按提示",

      onTap: (){
        print("阅读");
      },
      onLongPress: (){},
      child: MaterialButton(
        minWidth: 200,
        height: 100,
        onPressed: () {},
        color: Colors.deepPurpleAccent,
        child: Text("Semantics\n开启无障碍朗读功能后来点击试试看",style: TextStyle(color: Colors.white),),
      ),

      ///搞死我，编不下去了，大家自己看源码体会吧!!!
    );
  }
}
