import 'package:flutter/material.dart';

class ScrollbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ///带滚动条的滑动
    ///A Material Design scrollbar. A scrollbar indicates which portion of a Scrollable widget is actually visible.
    return Scrollbar(

        ///类似于SingleChildScrollView，把需要滑动的部件写到child即可
        child: ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Scrollbar $index"),
        );
      },
      itemCount: 10,
    ));
  }
}
