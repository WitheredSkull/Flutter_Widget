import 'package:flutter/material.dart';

class Toast {
  BuildContext _context;
  static final Toast _instance = Toast._internal();


  factory Toast() => _instance;

  Toast._internal();

  void init(BuildContext context) {
    _context = context;
  }

  void show(msg, {Duration duration}) {
    print("进来了");
    showDialog(
        context: _context,
        barrierDismissible: false,
        builder: (context) {
          Future.delayed(duration != null ? duration : Duration(seconds: 2),
              () {
            Navigator.pop(context);
          });
          return ToastView(msg);
        });
  }
}

class ToastView extends StatelessWidget {
  String msg;

  ToastView(this.msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.3),
      child: Text(msg),
    );
  }
}
