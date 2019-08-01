import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class Explan extends StatelessWidget {
  final String title;
  List<Widget> children;
  double marginTop;
  double marginBottom;

  Explan(this.title,
      {this.children = const <Widget>[],
      this.marginTop = 0,
      this.marginBottom = 0});

  @override
  Widget build(BuildContext context) {
//    children.insert(0, _title());
    children = [_title(), ...?children, _bottomLine()];
    return Padding(
      padding: EdgeInsets.only(
          left: 14, right: 14, top: marginTop, bottom: marginBottom),
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(top: 14, left: 40, right: 40),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _bottomLine() => Padding(
        padding: EdgeInsets.only(top: 14, bottom: 6),
        child: Divider(
          height: 1,
        ),
      );

  _title() => Padding(
        padding: EdgeInsets.only(bottom: 14),
        child: Text(
          title,
          style: TextStyle(
              fontSize: APP.AssetsSize.SIZE_BIG_TITLE_TEXT,
              color: APP.AssetsColor.COLOR_TITLE_TEXT),
        ),
      );
}
