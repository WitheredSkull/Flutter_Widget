import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widget/presenter/BasicsPresenter.dart';
import 'package:flutter_widget/view/basics/accessibility/AccessibilityPage.dart';
import 'package:flutter_widget/view/basics/input/InputPage.dart';
import 'package:flutter_widget/view/basics/layout/MultiLayout1Page.dart';
import 'package:flutter_widget/view/basics/layout/MultiLayout2Page.dart';
import 'package:flutter_widget/view/basics/layout/MultiLayout3Page.dart';
import 'package:flutter_widget/view/basics/layout/SingleLayout1Page.dart';
import 'package:flutter_widget/view/basics/layout/SingleLayout2Page.dart';
import 'package:flutter_widget/view/basics/layout/SingleLayout3Page.dart';
import 'package:flutter_widget/view/basics/text/TextPage.dart';
import 'package:flutter_widget/view/list/InfiniteList.dart';
import 'package:flutter_widget/view/widget/custom/Item.dart';
import 'package:flutter_widget/view/widget/custom/Rectangle.dart';
import 'package:flutter_widget/application/app.dart' as APP;

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
        children: <Widget>[...?_getLayout(), _getText(),_getInput(), _getAccessibility()],
      ),
    );
  }

  _startInfiniteListPage() =>
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return InfiniteListPage();
      }));

  getNewData() => "随机数${Random().nextInt(100)}";

  Widget _getText() {
    return RectangleContainer(
      presenter.textData.title,
      subtitle: presenter.textData.explain,
      children: <Widget>[
        ItemView(
          presenter.textData.title,
          beHindText: presenter.textData.behindTitle,
          subtitle: presenter.textData.subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return TextPage(
                presenter.textData,
              );
            }));
          },
        ),
      ],
    );
  }

  Widget _getInput() {
    return RectangleContainer(
      presenter.inputData.title,
      subtitle: presenter.inputData.explain,
      children: <Widget>[
        ItemView(
          presenter.inputData.title,
          beHindText: presenter.inputData.behindTitle,
          subtitle: presenter.inputData.subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return InputPage(
                presenter.inputData,
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
                return SingleLayout1Page(
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
                return SingleLayout2Page(
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
                return SingleLayout3Page(
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
                  return MultiLayout1Page(
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
                  return Multi2LayoutPage(
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
                  return Multi3LayoutPage(
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
