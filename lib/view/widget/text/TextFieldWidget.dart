import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldWidgetState();
  }
}

class TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController controller = TextEditingController(text: "TextField");

  @override
  Widget build(BuildContext context) {
    ///输入框
    ///Touching a text field places the cursor and displays the keyboard. The TextField widget implements this component.
    return TextField(
      ///控制器
      controller: controller,
      focusNode: FocusNode(),

      ///装饰
      decoration: InputDecoration(
          labelText: "TextField",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          contentPadding: EdgeInsets.all(10),
      ),

      ///按键样式
      keyboardType: TextInputType.text,

      ///回车样式
      textInputAction: TextInputAction.search,

      ///TextCapitalization.characters 每个字母都使用大写
      ///TextCapitalization.sentence 每个句子的第一个字母为大写
      ///TextCapitalization.word 单词的第一个字母为大写
      ///TextCapitalization.none 默认使用系统的
      textCapitalization: TextCapitalization.none,

      ///文本样式
      style: TextStyle(),

      ///
      strutStyle: StrutStyle(
        fontSize: 24,
      ),

      ///文本对齐方式
      textAlign: TextAlign.start,

      ///文本纵向对齐的y轴距离
      textAlignVertical: TextAlignVertical(y: 0),

      ///文字方向
      textDirection: TextDirection.ltr,

      ///是否是只读
      readOnly: false,

      ///帮助栏的功能
//      toolbarOptions: ToolbarOptions(copy: true, cut: true,paste: true,selectAll: true),

      ///是否显示游标
      showCursor: true,

      ///是否自动获取焦点
      autofocus: false,

      ///模糊的文字(就是密码那个)
      obscureText: false,

      ///自动更正
      autocorrect: true,

      ///最大行数
      maxLines: 1,

      ///最小的行数
      minLines: 1,

      ///是否填充父部件的所有剩余空间
      expands: false,

      ///最大可以输入长度11位的文本
      maxLength: 11,

      ///最大长度执行(如果为true则阻止文字数量超出maxLength)
      maxLengthEnforced: true,

      ///文字改变监听
      onChanged: (data) {
        print(data);
      },

      ///输入完整的回调
      onEditingComplete: () {
        print("Complete");
      },

      ///点击完成的回调
      onSubmitted: (data) {
        print("Submitted $data");
      },

      ///输入格式器
//      inputFormatters: ,
      ///是否启用
      enabled: true,

      ///游标的宽度
      cursorWidth: 2.00,

      ///游标半径
      cursorRadius: Radius.circular(2),

      ///游标颜色
      cursorColor: Colors.redAccent.withOpacity(0.3),

      ///键盘的外观（只适用IOS设备）
      keyboardAppearance: Brightness.light,

      ///滑动的内边距
      scrollPadding: const EdgeInsets.all(10.0),

      ///拖动开始行为
      dragStartBehavior: DragStartBehavior.start,

      ///启用交互式选择
      enableInteractiveSelection: true,

      ///点击事件
      onTap: () {
        print("Tap");
      },

      ///计数器部件
      buildCounter: (context,
          {int currentLength, int maxLength, bool isFocused}) {
        return Text("当前字数$currentLength");
      },

      ///滑动控制器
      scrollController: ScrollController(),

      ///模拟物理滑动
      scrollPhysics: ScrollPhysics(),
    );
  }
}
