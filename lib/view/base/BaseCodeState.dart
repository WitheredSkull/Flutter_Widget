import 'package:flutter/material.dart';
import 'package:flutter_widget/application/app.dart' as APP;

abstract class BaseCodeState<T extends StatefulWidget> extends State<T> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  BuildContext _context;
  ///跳转的链接
  String path;

  ///需要被复制到剪贴板的内容
  String copeContent;

  ///是否需要跳转功能
  bool isEnableCode;

  BaseCodeState({
    this.path,
    this.copeContent,
    this.isEnableCode = false,
  });

  @override
  Widget build(BuildContext context) {
    _context = context;
    var appbar = AppBar(
      title: Text(title() != null ? title() : ""),
      backgroundColor: APP.AssetsColor.COLOR_PRIMARY,
      actions: _getAppbarActions(),
    );
    var content = body();
    initData();
    return Scaffold(
      key: scaffoldKey,
      appBar: appbar,
      body: content,
    );
  }

  ///标题
  String title();

  Widget body();

  void initData();

  enableCode(bool enable) {
    setState(() {
      isEnableCode = enable;
    });
  }

  _getAppbarActions() {
    if (isEnableCode) {
      return [
        InkWell(
          onTap: startCode(path),
          child: Container(
            margin: EdgeInsets.only(right: 14),
            child: Image.asset(
              "assets/images/icon/ic_code.png",
              width: APP.AssetsSize.SIZE_ICON,
              height: APP.AssetsSize.SIZE_ICON,
            ),
          ),
        )
      ];
    } else {
      return List<Widget>();
    }
  }

  getScaffoldKey()=>scaffoldKey;

  getContext()=>_context;

  startCode(String path) {}
}
