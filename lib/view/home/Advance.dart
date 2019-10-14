import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/presenter/AdvancePresenter.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage0.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage2.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage3.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage4.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage1.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage2.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage3.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage4.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage5.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage6.dart';
import 'package:flutter_widget/view/widget/custom/Item.dart';
import 'package:flutter_widget/view/widget/custom/Rectangle.dart';

class AdvancePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AdvanceState();
  }
}

class AdvanceState extends State<AdvancePage> {
  AdvancePresenter presenter = AdvancePresenter();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[_getMaterialComponents(), _getCupertinoComponents()],
    ));
  }

  Widget _getMaterialComponents() {
    return RectangleContainer(
      "Material 组件",
      subtitle:
          "Visual, behavioral, and motion-rich widgets implementing the Material Design guidelines.",
      children: <Widget>[
        ItemView(
          presenter.materialComponents[0].title,
          beHindText: presenter.materialComponents[0].behindTitle,
          subtitle: presenter.materialComponents[0].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return MaterialPage1(
                presenter.materialComponents[0],
              );
            }));
          },
        ),
        ItemView(
          presenter.materialComponents[1].title,
          beHindText: presenter.materialComponents[1].behindTitle,
          subtitle: presenter.materialComponents[1].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return MaterialPage2(
                presenter.materialComponents[1],
              );
            }));
          },
        ),
        ItemView(
          presenter.materialComponents[2].title,
          beHindText: presenter.materialComponents[2].behindTitle,
          subtitle: presenter.materialComponents[2].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return MaterialPage3(
                presenter.materialComponents[2],
              );
            }));
          },
        ),
        ItemView(
          presenter.materialComponents[3].title,
          beHindText: presenter.materialComponents[3].behindTitle,
          subtitle: presenter.materialComponents[3].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return MaterialPage4(
                presenter.materialComponents[3],
              );
            }));
          },
        ),
        ItemView(
          presenter.materialComponents[4].title,
          beHindText: presenter.materialComponents[4].behindTitle,
          subtitle: presenter.materialComponents[4].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return MaterialPage5(
                presenter.materialComponents[4],
              );
            }));
          },
        ),
        ItemView(
          presenter.materialComponents[5].title,
          beHindText: presenter.materialComponents[5].behindTitle,
          subtitle: presenter.materialComponents[5].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return MaterialPage6(
                presenter.materialComponents[5],
              );
            }));
          },
        ),
      ],
    );
  }

  Widget _getCupertinoComponents() {
    return RectangleContainer(
      "Cupertino 组件(IOS 风格)",
      subtitle:
          "Beautiful and high-fidelity widgets for current iOS design language.",
      children: <Widget>[
        ItemView(
          presenter.cupertinoComponents[0].title,
          beHindText: presenter.cupertinoComponents[0].behindTitle,
          subtitle: presenter.cupertinoComponents[0].subtitle,
          onTap: () {
            print(presenter.cupertinoComponents[0].toString());
            Navigator.push(context, CupertinoPageRoute(builder: (setting) {
              return CupertinoPage0(
                presenter.cupertinoComponents[0],
              );
            }));
          },
        ),
        ItemView(
          presenter.cupertinoComponents[1].title,
          beHindText: presenter.cupertinoComponents[1].behindTitle,
          subtitle: presenter.cupertinoComponents[1].subtitle,
          onTap: () {
            print(presenter.cupertinoComponents[0].toString());
            Navigator.push(context, CupertinoPageRoute(builder: (setting) {
              return CupertinoPage2(
                presenter.cupertinoComponents[1],
              );
            }));
          },
        ),
        ItemView(
          presenter.cupertinoComponents[2].title,
          beHindText: presenter.cupertinoComponents[2].behindTitle,
          subtitle: presenter.cupertinoComponents[2].subtitle,
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(builder: (setting) {
              return CupertinoPage3(
                presenter.cupertinoComponents[2],
              );
            }));
          },
        ),
        ItemView(
          presenter.cupertinoComponents[3].title,
          beHindText: presenter.cupertinoComponents[3].behindTitle,
          subtitle: presenter.cupertinoComponents[3].subtitle,
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(builder: (setting) {
              return CupertinoPage4(
                presenter.cupertinoComponents[3],
              );
            }));
          },
        ),
      ],
    );
  }
}
