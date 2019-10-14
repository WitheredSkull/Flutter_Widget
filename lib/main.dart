import 'package:flutter/material.dart';
import 'package:flutter_widget/view/splash.dart';
import 'package:flutter_widget/view/home.dart';
import 'package:flutter_widget/application/app.dart' as APP;

import 'view/widget/custom/Toast.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    Toast().init(context);
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: APP.AssetsColor.COLOR_BACKGROUND,
          textSelectionColor: Colors.lightBlue,
          textSelectionHandleColor: Colors.black.withOpacity(0.7),
          textTheme: TextTheme(
              title: TextStyle(
                inherit: false,
                color: APP.AssetsColor.COLOR_TITLE_TEXT,
                fontSize: APP.AssetsSize.SIZE_TITLE_TEXT,
                fontStyle: FontStyle.normal,
              ),
              subtitle: TextStyle(
                  color: APP.AssetsColor.COLOR_SUBTITLE_TEXT,
                  fontSize: APP.AssetsSize.SIZE_SUBTITLE_TEXT),
          )),
      initialRoute: "/splash",
      onGenerateRoute: (setting) {
        return MaterialPageRoute(builder: (context) {
          return Splash();
        });
      },
      home: HomePage(),
    );
  }
}
