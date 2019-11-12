import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart';

class Toast {
  static final Toast _instance = Toast._internal();

  factory Toast() => _instance;

  Toast._internal();

  static show(BuildContext context, msg, {Duration duration}) {
    var overlayEntry = OverlayEntry(builder: (context) {
      return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          color: AssetsColor.COLOR_BACKGROUND_3,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(0, 14, 0, 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                msg,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.none,
                    fontSize: 14),
              )
            ],
          ),
        ),
      );
    });
    Overlay.of(context).insert(overlayEntry);
    Future.delayed(duration != null ? duration : Duration(seconds: 1))
        .then((t) {
      overlayEntry.remove();
    });
  }
}
