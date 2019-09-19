import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart' as APP;

///自定义的默认ITEM VIEW
class ItemView extends StatelessWidget {
  String text;
  String beHindText;
  String subtitle;
  final Widget leading;
  final Widget trailing;
  final EdgeInsetsGeometry contentPadding;
  bool enabled = true;
  final GestureTapCallback onTap;
  bool selected;
  BuildContext context;

  ItemView(
    this.text, {
    this.beHindText,
    this.subtitle,
    this.leading,
    this.trailing,
    this.contentPadding =
        const EdgeInsets.only(left: 14, top: 6, bottom: 0, right: 14),
    this.enabled = true,
    this.onTap,
    this.selected = false,
  })  : assert(text != null),
        assert(enabled != null),
        assert(selected != null);

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return ListTile(
      leading: null,
      //前面的ICON
      title: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            text,
            style: Theme.of(context).textTheme.title,
          ),
          if (beHindText != null)
            SizedBox(width: 8,),
          if (beHindText != null)
            Expanded(
                child: Text(
              beHindText,
              overflow: TextOverflow.fade,
              softWrap: false,
              maxLines: 1,
              style: Theme.of(context).textTheme.subtitle,
            )),
        ],
      ),
      //标题
      subtitle: subtitle == null
          ? null
          : Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                subtitle,
                overflow: TextOverflow.fade,
                softWrap: false,
                style: Theme.of(context).textTheme.subtitle,
              ),
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
        _showSubtitle();
        print("长按事件");
      },
      //长按事件
      selected: selected, //是否选中（选中字体会变成主题色）
    );
  }

  _showSubtitle() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Center(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(APP.AssetsSize.SIZE_DEFAULT_PADDING),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    text,
                    style: TextStyle(
                      backgroundColor: Color(0xFFdee1e4),
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: Theme.of(context).textTheme.title.fontSize),
                  ),
                  SizedBox(
                    height: APP.AssetsSize.SIZE_DEFAULT_DISTANCE,
                  ),
                  if (beHindText != null)
                    Text(
                      beHindText,
                      style: TextStyle(
                          backgroundColor: Color(0xFF717c86),
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: Theme.of(context).textTheme.title.fontSize),
                    ),
                  if (beHindText != null)
                    SizedBox(
                      height: APP.AssetsSize.SIZE_DEFAULT_DISTANCE,
                    ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: TextStyle(
                          backgroundColor: Color(0xFF2a3841),
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontSize: Theme.of(context).textTheme.title.fontSize),
                    ),
                ],
              ),
            ),
          );
        });
  }
}
