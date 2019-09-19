import 'package:flutter/material.dart';
import 'package:flutter_widget/presenter/AdvancePresenter.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage1.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage2.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage3.dart';
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
    return Scrollbar(
        child: Column(
      children: <Widget>[_getMaterialComponents()],
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
              return MaterialPage1(
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
              return MaterialPage1(
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
              return MaterialPage1(
                presenter.materialComponents[5],
              );
            }));
          },
        ),
      ],
    );
  }
}
