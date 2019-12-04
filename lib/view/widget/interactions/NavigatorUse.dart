import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';

//canPop(BuildContext context) → bool
//Whether the navigator that most tightly encloses the given context can be popped. [...]
//maybePop<T extends Object>(BuildContext context, [ T result ]) → Future<bool>
//Returns the value of the current route's Route.willPop method for the navigator that most tightly encloses the given context. [...]
//@optionalTypeArgs
//of(BuildContext context, { bool rootNavigator: false, bool nullOk: false }) → NavigatorState
//The state from the closest instance of this class that encloses the given context. [...]
//pop<T extends Object>(BuildContext context, [ T result ]) → bool
//Pop the top-most route off the navigator that most tightly encloses the given context. [...]
//@optionalTypeArgs
//popAndPushNamed<T extends Object, TO extends Object>(BuildContext context, String routeName, { TO result, Object arguments }) → Future<T>
//Pop the current route off the navigator that most tightly encloses the given context and push a named route in its place. [...]
//@optionalTypeArgs
//popUntil(BuildContext context, RoutePredicate predicate) → void
//Calls pop repeatedly on the navigator that most tightly encloses the given context until the predicate returns true. [...]
//push<T extends Object>(BuildContext context, Route<T> route) → Future<T>
//Push the given route onto the navigator that most tightly encloses the given context. [...]
//@optionalTypeArgs
//pushAndRemoveUntil<T extends Object>(BuildContext context, Route<T> newRoute, RoutePredicate predicate) → Future<T>
//Push the given route onto the navigator that most tightly encloses the given context, and then remove all the previous routes until the predicate returns true. [...]
//@optionalTypeArgs
//pushNamed<T extends Object>(BuildContext context, String routeName, { Object arguments }) → Future<T>
//Push a named route onto the navigator that most tightly encloses the given context. [...]
//@optionalTypeArgs
//pushNamedAndRemoveUntil<T extends Object>(BuildContext context, String newRouteName, RoutePredicate predicate, { Object arguments }) → Future<T>
//Push the route with the given name onto the navigator that most tightly encloses the given context, and then remove all the previous routes until the predicate returns true. [...]
//@optionalTypeArgs
//pushReplacement<T extends Object, TO extends Object>(BuildContext context, Route<T> newRoute, { TO result }) → Future<T>
//Replace the current route of the navigator that most tightly encloses the given context by pushing the given route and then disposing the previous route once the new route has finished animating in. [...]
//@optionalTypeArgs
//pushReplacementNamed<T extends Object, TO extends Object>(BuildContext context, String routeName, { TO result, Object arguments }) → Future<T>
//Replace the current route of the navigator that most tightly encloses the given context by pushing the route named routeName and then disposing the previous route once the new route has finished animating in. [...]
//@optionalTypeArgs
//removeRoute(BuildContext context, Route route) → void
//Immediately remove route from the navigator that most tightly encloses the given context, and Route.dispose it. [...]
//removeRouteBelow(BuildContext context, Route anchorRoute) → void
//Immediately remove a route from the navigator that most tightly encloses the given context, and Route.dispose it. The route to be replaced is the one below the given anchorRoute. [...]
//replace<T extends Object>(BuildContext context, { Route oldRoute, Route<T> newRoute }) → void
//Replaces a route on the navigator that most tightly encloses the given context with a new route. [...]
//@optionalTypeArgs
//replaceRouteBelow<T extends Object>(BuildContext context, { Route anchorRoute, Route<T> newRoute }) → void
//Replaces a route on the navigator that most tightly encloses the given context with a new route. The route to be replaced is the one below the given anchorRoute. [...]
//@optionalTypeArgs
class NavigatorUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
//      MaterialApp(
        ///定义路由表
//      routes: {
//        "page1": (context) => NavigatorPage1(1),
//        "page2": (context) => NavigatorPage1(2),
//        "page3": (context) => NavigatorPage1(3),
//      },
//      home:
        Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: NavigatorHomePage(),
//      ),
    );
  }
}

class NavigatorHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          DefaultButton("Navigator.of(context).push", () {
            ///动态路由入栈模式
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NavigatorPage1(1);
            }));
          }),
          DefaultButton("Navigator.of(context).pushNamed", () {
            ///静态路由入栈模式
            Navigator.of(context).pushNamed("page1");
          }),
          DefaultButton("Navigator.of(context).popAndPushNamed", () {
            ///先出栈当前页面，然后入栈新的页面
            Navigator.of(context).popAndPushNamed("page1");
          }),
          DefaultButton("Navigator.of(context).pushReplacement", () {
            ///动态替换当前栈，也就是替换当前页面为新的页面
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (context) {
              return NavigatorPage1(1);
            }));
          }),
          DefaultButton("Navigator.of(context).pushReplacementNamed", () {
            ///静态替换当前栈，也就是替换当前页面为新的页面
            Navigator.of(context).pushReplacementNamed("page1");
          }),
          DefaultButton("体验\npushAndRemoveUntil\npushNamedAndRemoveUntil", () {
            Navigator.of(context).pushNamed("page2");
          }),
          DefaultButton("体验\nNavigator.of(context).popUntil\n1", () {
            Navigator.of(context).pushNamed("page2");
          }),
        ],
      ),
    );
  }
}

class NavigatorPage1 extends StatefulWidget {
  var title = "Page1";
  var index = 1;

  NavigatorPage1(this.index) {
    title = "Page$index";
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NavigatorPage1State();
  }
}

class NavigatorPage1State extends State<NavigatorPage1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DefaultButton("Navigator.of(context).pop", () {
                ///出栈当前页
                Navigator.of(context).pop();
              }),
              DefaultButton("Navigator.of(context).canPop", () {
                ///判断是否可以出栈当前页
                if (Navigator.of(context).canPop()) Navigator.of(context).pop();
              }),
              DefaultButton("Navigator.of(context).maybePop", () {
                ///如果可以出栈当前页就出栈，不能就不做处理
                Navigator.of(context).maybePop();
              }),
              if (widget.index == 2)
                DefaultButton("Navigator.of(context).pushAndRemoveUntil", () {
                  ///静态入栈新的页面，移除栈到predicate，也就是指定的过去页面
                  ///（效果是从第一个页面进来，经过第二个页面时。指定predicate为第一个页面，
                  ///当你在第三个页面返回时会直接返回到第一个页面，
                  ///类似淘宝走了下单支付完成后返回会直接返回到商品页）
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) {
                    return NavigatorPage1(3);
                  }), ModalRoute.withName("page1"));
                }),
              if (widget.index == 2)
                DefaultButton("Navigator.of(context).pushNamedAndRemoveUntil",
                    () {
                  ///动态入栈新的页面，移除栈到predicate，也就是指定的过去页面
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      "page3", ModalRoute.withName("page1"));
                }),
              if (widget.index == 3)
                DefaultButton("使用\nNavigator.of(context).popUntil", () {
                  ///出栈到指定页面，从当前页到指定页面中间所有的栈都会被退掉
                  Navigator.of(context).popUntil(ModalRoute.withName("page1"));
                }),
              DefaultButton("体验\nNavigator.of(context).popUntil\n2", () {
                Navigator.of(context).pushNamed("page3");
              }),
            ],
          ),
        ),
      ),
    );
  }
}

