import 'package:flutter/material.dart';

class ExpansionPanelWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpansionPanelWidgetState();
  }
}

class ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    ///一个可以拓建面板的部件，时候做多级列表
    ///Expansion panels contain creation flows and allow lightweight editing of an element. The ExpansionPanel widget implements this component.
    ///外层需要用ExpansionPanelList进行包裹
    return ExpansionPanelList(
      children: [
        ///children的类型必须为ExpansionPanel
        ExpansionPanel(

            ///是否展开面板
            isExpanded: isExpanded,

            ///头部构建（一级列表）
            headerBuilder: (context, isExpanded) {
              return Card(
                child: ListTile(
                  leading: Icon(Icons.arrow_downward),
                  title: Text("ExpansionPanel"),
                ),
              );
            },

            ///能否在 整个头部点击
            canTapOnHeader: true,

            ///展开内容（二级列表）
            body: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.arrow_downward),
                    title: Text("二级列表"),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.arrow_downward),
                    title: Text("二级列表"),
                  ),
                ),
              ],
            ))
      ],

      ///面板点击回调（一级列表点击回调）
      expansionCallback: (panelIndex, isExpansion) {
        setState(() {
          isExpanded = !isExpanded;
          print("$isExpanded");
        });
      },

      ///面板动画持续时长
      animationDuration: Duration(milliseconds: 400),
    );
  }
}
