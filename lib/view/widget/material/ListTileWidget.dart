import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///一个固定高度的行，通常包含一些文本以及一个开头或结尾图标。
    ///A single fixed-height row that typically contains some text as well as a leading or trailing icon.
    return ListTile(
      ///最前面的部件
      leading: Icon(Icons.person),

      ///标题
      title: Text("Title"),

      ///附标题
      subtitle: Text("Subtitle"),

      ///最后面的部件
      trailing: Icon(Icons.add),

      ///是否使用三行的高度
      isThreeLine: false,
      dense: false,

      ///内容的内边距
      contentPadding: EdgeInsets.all(10),

      ///是否开启点击事件
      enabled: true,

      ///点击事件
      onTap: () {
        print("被点击");
      },

      ///长按事件
      onLongPress: () {
        print("被长按");
      },

      ///是否默认选中
      selected: false,
    );
  }
}
