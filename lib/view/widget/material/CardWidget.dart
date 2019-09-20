import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///像卡片一样展示在界面上，并且会利用阴影制造一种悬浮的效果
    ///A Material Design card. A card has slightly rounded corners and a shadow.
    return Card(
      ///颜色
      color: Colors.white,

      ///阴影高度
      elevation: 10,

      ///外形
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

      ///边界上的前景
      borderOnForeground: true,

      ///边距
      margin: EdgeInsets.all(20),

      ///剪裁方式
      clipBehavior: Clip.none,

      ///子部件
      child: _content(),

      ///语义容器
      semanticContainer: true,
    );
  }

  _content() => Row(
        children: <Widget>[
          Icon(
            Icons.person,
            color: Colors.deepPurple.shade300,
            size: 48,
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AssetsLabel.LABEL_WEIXIN,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10,
              ),
              Text(AssetsLabel.LABEL_WEIXIN_NUMBER),
            ],
          ))
        ],
      );
}
