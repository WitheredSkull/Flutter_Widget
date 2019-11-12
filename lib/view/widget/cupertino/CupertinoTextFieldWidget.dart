import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CupertinoTextFieldWidgetState();
  }
}

class CupertinoTextFieldWidgetState extends State<CupertinoTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    ///An iOS-style text field.
    ///一个IOS风格的文本编辑框
    return CupertinoTextField(
      ///控制器
      controller: TextEditingController(text: "Test"),

      ///关注焦点
      focusNode: FocusNode(),

      ///装饰
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CupertinoColors.white),

      ///内边距
      padding: const EdgeInsets.all(10.00),

      ///占位符
      placeholder: "placeholder",

      ///占位符样式
      placeholderStyle: const TextStyle(color: CupertinoColors.activeBlue),

      ///前缀
      prefix: Icon(Icons.adjust),

      ///前缀显示模式
      prefixMode: OverlayVisibilityMode.always,

      ///后缀
      suffix: Icon(Icons.search),

      ///后缀显示模式
      suffixMode: OverlayVisibilityMode.always,

      ///清晰按钮模式
      clearButtonMode: OverlayVisibilityMode.always,

      ///软键盘输入类型
      keyboardType: TextInputType.number,

      ///软键盘右下角按钮样式
      textInputAction: TextInputAction.search,

      ///文本大小写
      textCapitalization: TextCapitalization.none,

      ///文字样式
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 24,
          color: CupertinoColors.black.withOpacity(0.7)),

      ///支柱的风格
      strutStyle: StrutStyle(fontSize: 10),

      ///文本对齐方式
      textAlign: TextAlign.start,

      ///文本垂直对齐
      textAlignVertical: TextAlignVertical.center,

      ///是否是只读
      readOnly: false,

      ///长按工具栏支持
      toolbarOptions:
          ToolbarOptions(copy: true, cut: true, paste: true, selectAll: true),

      ///显示游标？
      showCursor: true,

      ///自动获取焦点
      autofocus: false,

      ///模糊的文字(就是密码那个)
      obscureText: false,

      ///自动更正
      autocorrect: true,

      ///最大行数
      maxLines: 1,

      ///最小的行数
//      minLines: ,
      ///是否填充父部件的所有剩余空间
      expands: false,

      ///最大可以输入长度10位的文本
      maxLength: 10,

      ///最大长度执行(如果为true则阻止文字数量超出maxLength)
      maxLengthEnforced: true,

      ///文字改变监听
      onChanged: (value) {},

      ///输入完整的回调
      onEditingComplete: () {
        print("编辑完成回调");
      },

      ///点击完成的回调
      onSubmitted: (value) {
        print("提交回调");
      },

      ///输入格式器
//      inputFormatters: ,
      ///是否启用
      enabled: true,

      ///游标的宽度
      cursorWidth: 2.0,

      ///游标半径
      cursorRadius: const Radius.circular(2.0),

      ///游标颜色
      cursorColor: CupertinoColors.activeBlue,

      ///键盘的外观（只适用IOS设备）
      keyboardAppearance: Brightness.light,

      ///滑动的内边距
      scrollPadding: const EdgeInsets.all(20.0),

      ///拖动开始行为
      dragStartBehavior: DragStartBehavior.start,

      ///启用交互式选择
      enableInteractiveSelection: true,

      ///点击事件
      onTap: () {
        print("点击回调");
      },

      ///滑动控制器
      scrollController: ScrollController(),

      ///模拟物理滑动
      scrollPhysics: ScrollPhysics(),
    );
  }
}
