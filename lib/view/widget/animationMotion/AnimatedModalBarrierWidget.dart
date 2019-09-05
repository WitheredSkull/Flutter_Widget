import 'package:flutter/material.dart';

class AnimatedModalBarrierWidget extends StatelessWidget{
  String details = '''A widget that rebuilds when the given Listenable changes value.
AnimatedWidget is most commonly used with Animation objects, which are Listenable, but it can be used with any Listenable, including ChangeNotifier and ValueNotifier.
AnimatedWidget is most useful for widgets that are otherwise stateless. To use AnimatedWidget, simply subclass it and implement the build function.''';


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(details),
        SizedBox(height: 10,),
        Text("阻止用户与后面的Widgets交互，常见用到的地方就是routes：\n当你跳转一个新的页面后，之前的页面虽然存在，但是你看不到也无法和之前的页面进行交互"),
      ],
    );
  }
}