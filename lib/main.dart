import 'package:flutter/material.dart';
import 'package:flutter_widget/splash.dart';
import 'package:flutter_widget/widget.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/splash",
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) {
          return Splash();
        });
      },
      home: WidgetSamplePage(),
    );
  }
}
