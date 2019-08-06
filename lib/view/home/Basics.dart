import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/presenter/BasicsPresenter.dart';
import 'package:flutter_widget/view/basics/accessibility/Accessibility.dart';
import 'package:flutter_widget/view/basics/layout/MultiLayout.dart';
import 'package:flutter_widget/view/basics/layout/MultiLayout2.dart';
import 'package:flutter_widget/view/basics/layout/MultiLayout3.dart';
import 'package:flutter_widget/view/basics/layout/SingleLayout.dart';
import 'package:flutter_widget/view/basics/layout/SingleLayout2.dart';
import 'package:flutter_widget/view/basics/layout/SingleLayout3.dart';
import 'package:flutter_widget/view/list/InfiniteList.dart';
import 'package:flutter_widget/view/widget/custom/Item.dart';
import 'package:flutter_widget/view/widget/custom/Rectangle.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/basics/text/Text.dart' as textView;

class BasicsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicsState();
  }
}

class BasicsState extends State<BasicsPage> {
  var list = List<String>();
  BasicsPresenter presenter;

  @override
  void initState() {
    super.initState();
    presenter = BasicsPresenter();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[...?_getLayout(),_getText(), _getAccessibility()],
      ),
    );
  }

  _startInfiniteListPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return InfiniteListPage();
      }));

  getNewData() => "随机数${Random().nextInt(100)}";

  Widget _getText(){
    return RectangleContainer(
      presenter.textData[0].title,
      subtitle: presenter.textData[0].explain,
      children: <Widget>[
        ItemView(
          presenter.textData[0].title,
          beHindText: presenter.textData[0].behindTitle,
          subtitle: presenter.textData[0].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return textView.TextView(
                presenter.textData[0],
              );
            }));
          },
        ),
      ],
    );
  }

  List<Widget> _getLayout() {
    return <Widget>[
      RectangleContainer(
        "视图容器(单部件)",
        subtitle: "View the container(single child)",
        children: <Widget>[
          ItemView(
            presenter.singleLayoutData[0].title,
            beHindText: presenter.singleLayoutData[0].behindTitle,
            subtitle: presenter.singleLayoutData[0].subtitle,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (setting) {
                return LayoutPage(
                  presenter.singleLayoutData[0],
                );
              }));
            },
          ),
          ItemView(
            presenter.singleLayoutData[1].title,
            beHindText: presenter.singleLayoutData[1].behindTitle,
            subtitle: presenter.singleLayoutData[1].subtitle,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (setting) {
                return Layout2Page(
                  presenter.singleLayoutData[1],
                );
              }));
            },
          ),
          ItemView(
            presenter.singleLayoutData[2].title,
            beHindText: presenter.singleLayoutData[2].behindTitle,
            subtitle: presenter.singleLayoutData[2].subtitle,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (setting) {
                return Layout3Page(
                  presenter.singleLayoutData[2],
                );
              }));
            },
          ),
        ],
      ),
      RectangleContainer("视图容器(多部件)",
          subtitle: "View the container(multi child)",
          children: <Widget>[
            ItemView(
              presenter.multiLayoutData[0].title,
              beHindText: presenter.multiLayoutData[0].behindTitle,
              subtitle: presenter.multiLayoutData[0].subtitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return MultiLayout(
                    presenter.multiLayoutData[0],
                  );
                }));
              },
            ),
            ItemView(
              presenter.multiLayoutData[1].title,
              beHindText: presenter.multiLayoutData[1].behindTitle,
              subtitle: presenter.multiLayoutData[1].subtitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return Multi2Layout(
                    presenter.multiLayoutData[1],
                  );
                }));
              },
            ),
            ItemView(
              presenter.multiLayoutData[2].title,
              beHindText: presenter.multiLayoutData[2].behindTitle,
              subtitle: presenter.multiLayoutData[2].subtitle,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return Multi3Layout(
                    presenter.multiLayoutData[2],
                  );
                }));
              },
            ),
          ]),
    ];
  }

  Widget _getAccessibility() {
    return RectangleContainer(
      "可访问性",
      subtitle: presenter.accessibilityData[0].explain,
      children: <Widget>[
        ItemView(
          presenter.accessibilityData[0].title,
          beHindText: presenter.accessibilityData[0].behindTitle,
          subtitle: presenter.accessibilityData[0].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return Accessibility(
                presenter.accessibilityData[0],
              );
            }));
          },
        ),
      ],
    );
  }
}
