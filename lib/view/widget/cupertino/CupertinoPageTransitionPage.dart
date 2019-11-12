import 'package:flutter/cupertino.dart';
import 'package:flutter_widget/view/widget/cupertino/CupertinoNavigationPage.dart';

class CupertinoPageTransitionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CupertinoPageTransitionPageState();
  }
}

class CupertinoPageTransitionPageState
    extends State<CupertinoPageTransitionPage>
    with SingleTickerProviderStateMixin {
  Animation<double> primaryRouteAnimation;
  Animation<double> secondaryRouteAnimation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    primaryRouteAnimation = Tween(begin: 0.1, end: 1.0).animate(controller);
    secondaryRouteAnimation = Tween(begin: 0.1, end: 1.0).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageTransition(
      primaryRouteAnimation: primaryRouteAnimation,
      secondaryRouteAnimation: secondaryRouteAnimation,
      child: Center(
        child: Text("data"),
      ),
      linearTransition: true,
    );
  }
}
