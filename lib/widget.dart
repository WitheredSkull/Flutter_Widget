import 'package:flutter/material.dart';
import 'package:flutter_widget/view/homePage/FirstPage.dart';
import 'package:flutter_widget/view/homePage/SecondPage.dart';
import 'package:flutter_widget/view/homePage/ThirdPage.dart';

class WidgetSamplePage extends StatefulWidget {
  var title = ["第一页", "第二页", "第三页"];

  @override
  State<StatefulWidget> createState() {
    return WidgetSample();
  }
}

class WidgetSample extends State<WidgetSamplePage> {
  var currentIndex = 0;
  PageController controllerPageView = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title[0]),
        centerTitle: true,
      ),
      body: PageView(
        controller: controllerPageView,
        children: <Widget>[getFirstPage(), getSecondPage(), getThirdPage()],
        onPageChanged: _switchPage,
      ),
      drawer: Text("测试"),
      bottomNavigationBar: _getBottomView(),
    );
  }

  void _switchPage(int index) {
    setState(() {
      currentIndex = index;
      if (controllerPageView.page.toInt() != currentIndex) {
        controllerPageView.jumpToPage(currentIndex);
      }
    });
  }

  Widget _getBottomView() => BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.first_page),title: Text(widget.title[0])),
          BottomNavigationBarItem(icon: Icon(Icons.pages),title: Text(widget.title[1])),
          BottomNavigationBarItem(icon: Icon(Icons.last_page),title: Text(widget.title[2]))
        ],
        currentIndex: currentIndex,
        onTap: _switchPage,
      );

  Widget getFirstPage() => FirstPage();

  Widget getSecondPage() => SecondPage();

  Widget getThirdPage() => ThirdPage();
}
