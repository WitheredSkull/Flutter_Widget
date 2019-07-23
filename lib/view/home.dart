import 'package:flutter/material.dart';
import 'package:flutter_widget/view/home/Basics.dart';
import 'package:flutter_widget/view/home/Advance.dart';
import 'package:flutter_widget/view/home/Decode.dart';
import 'package:flutter_widget/application/app.dart' as APP;

class HomePage extends StatefulWidget {
  var title = ["基础", "进阶", "解密"];

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomePage> {
  var currentIndex = 0;
  PageController controllerPageView = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(widget.title[currentIndex]),
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
          BottomNavigationBarItem(
              icon: Image.asset(
                currentIndex == 0
                    ? "assets/images/icon/ic_basics_primary.png"
                    : "assets/images/icon/ic_basics.png",
                width: APP.AssetsSize.SIZE_ICON,
                height: APP.AssetsSize.SIZE_ICON,
              ),
              title: Text(widget.title[0])),
          BottomNavigationBarItem(
              icon: Image.asset(
                currentIndex == 1
                    ? "assets/images/icon/ic_advance_primary.png"
                    : "assets/images/icon/ic_advance.png",
                width: APP.AssetsSize.SIZE_ICON,
                height: APP.AssetsSize.SIZE_ICON,
              ),
              title: Text(widget.title[1])),
          BottomNavigationBarItem(
              icon: Image.asset(
                currentIndex == 2
                    ? "assets/images/icon/ic_decode_primary.png"
                    : "assets/images/icon/ic_decode.png",
                width: APP.AssetsSize.SIZE_ICON,
                height: APP.AssetsSize.SIZE_ICON,
              ),
              title: Text(widget.title[2]))
        ],
        currentIndex: currentIndex,
        onTap: _switchPage,
      );

  Widget getFirstPage() => BasicsPage();

  Widget getSecondPage() => AdvancePage();

  Widget getThirdPage() => DecodePage();
}
