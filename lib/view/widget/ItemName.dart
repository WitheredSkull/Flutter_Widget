import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class ItemName extends StatelessWidget {
  String data;

  ItemName(this.data) : assert(data != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, bottom: 4),
      child: Text(
        data,
        style: TextStyle(
            color: Theme.of(context).textTheme.subtitle.color,
            fontSize: APP.AssetsSize.SIZE_TITLE_TEXT,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
