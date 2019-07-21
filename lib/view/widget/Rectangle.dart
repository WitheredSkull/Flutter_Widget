import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart' as APP;

///自定义的默认组件框
class RectangleContainer extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  Color backgroundColor;
  final EdgeInsetsGeometry padding;
  List<Widget> children;
  final String title;
  final String subtitle;
  Widget titleWidget;
  Widget subtitleWidget;

  RectangleContainer(this.title,
      {this.subtitle,
      this.children,
      this.margin = const EdgeInsets.all(14),
      this.padding = const EdgeInsets.all(14),
      this.backgroundColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      color: backgroundColor,
      child: Material(
        color: backgroundColor,
        child: ListView(
          shrinkWrap: true,
          children: _getChildren(context),
        ),
      ),
    );
  }

  _getChildren(BuildContext context) {
    _insertHead(context);
    return children;
  }

  _insertHead(BuildContext context) {
    if (!(titleWidget != null && children[0] != titleWidget)) {
      titleWidget = Padding(
        padding: EdgeInsets.only(
            top: 10,
            bottom: (subtitle != null && subtitle.isNotEmpty) ? 0 : 10,
            left: 14,
            right: 14),
        child: Text(
          title,
          style: TextStyle(
              color: Theme.of(context).textTheme.title.color,
              fontSize: APP.AssetsSize.SIZE_BIG_TITLE_TEXT,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      );
      if (subtitle != null && subtitle.isNotEmpty) {
        subtitleWidget = Padding(
          padding: const EdgeInsets.only(bottom: 6, left: 14, right: 14),
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle,
            textAlign: TextAlign.left,
          ),
        );
        children.insert(0, subtitleWidget);
      }
      children.insert(0, titleWidget);
    }
  }
}
