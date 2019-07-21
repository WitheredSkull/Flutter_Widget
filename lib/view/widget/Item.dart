import 'package:flutter/material.dart';

///自定义的默认ITEM VIEW
class ItemView extends StatelessWidget {
  String text;
  String subtitle;
  final Widget leading;
  final Widget trailing;
  final EdgeInsetsGeometry contentPadding;
  bool enabled = true;
  final GestureTapCallback onTap;
  bool selected;

  ItemView(
    this.text, {
    this.subtitle,
    this.leading,
    this.trailing,
    this.contentPadding =
        const EdgeInsets.only(left: 14, top: 0, bottom: 0, right: 14),
    this.enabled = true,
    this.onTap,
    this.selected = false,
  })  : assert(enabled != null),
        assert(selected != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: null,
      //前面的ICON
      title: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
      //标题
      subtitle: subtitle == null
          ? null
          : Text(
              subtitle,
              style: Theme.of(context).textTheme.subtitle,
            ),
      //副标题
      trailing: null,
      //后面的ICON
      isThreeLine: false,
      //使用这个之前必须保证subTitle有值，使用后会展示成三行的高度
      dense: false,
      //整体会变得更密集，比如高度缩短，文字缩小
      contentPadding: contentPadding,
      //给内容设置内边距
      enabled: enabled,
      //是否启用（false文字会变浅灰并且无法点击）
      onTap: onTap,
      //轻敲事件
      onLongPress: () {
        print("长按事件");
      },
      //长按事件
      selected: selected, //是否选中（选中字体会变成主题色）
    );
  }
}
