import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ///刷新部件
    ///A Material Design pull-to-refresh wrapper for scrollables.
    return RefreshIndicatorWidgetState();
  }
}

class RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  @override
  Widget build(BuildContext context) {
    ///刷新部件
    ///A Material Design pull-to-refresh wrapper for scrollables.
    return RefreshIndicator(

        ///这个子部件滑动到顶部再滑动会触发刷新事件
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("RefreshIndicator $index"),
            );
          },
          itemCount: 4,
        ),

        ///刷新事件，当return时会停止刷新
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 1), () {
            return;
          });
        });
  }
}
