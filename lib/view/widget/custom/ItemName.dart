import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class ItemName extends StatelessWidget {
  String data;
  String subData;

  ItemName(this.data, {this.subData}) : assert(data != null);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24, bottom: 4),
      child: subData == null
          ? _getDataView()
          : Column(
              children: <Widget>[_getDataView(), _getSubDataView()],
            ),
    );
  }

  _getDataView() => Text(
        data,
        style: TextStyle(
            backgroundColor: Color(0xFF717c86),
            color: Colors.white,
            fontSize: APP.AssetsSize.SIZE_TITLE_TEXT,
            fontWeight: FontWeight.bold),
      );

  _getSubDataView() => Text(
        subData,
        style: TextStyle(
            backgroundColor: Color(0xFF2a3841),
            color: Colors.white,
            fontSize: APP.AssetsSize.SIZE_TITLE_TEXT,
            fontWeight: FontWeight.bold),
      );
}
