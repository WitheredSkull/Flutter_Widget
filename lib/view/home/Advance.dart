import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget/presenter/AdvancePresenter.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage0.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage2.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage3.dart';
import 'package:flutter_widget/view/advance/cupertino/CupertinoPage4.dart';
import 'package:flutter_widget/view/advance/interactions/RoutingPage.dart';
import 'package:flutter_widget/view/advance/interactions/TouchInteractionsPage0.dart';
import 'package:flutter_widget/view/advance/interactions/TouchInteractionsPage1.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage1.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage2.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage3.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage4.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage5.dart';
import 'package:flutter_widget/view/advance/material/MaterialPage6.dart';
import 'package:flutter_widget/view/advance/paintingAndEffect/PaintingAndEffectPage0.dart';
import 'package:flutter_widget/view/advance/paintingAndEffect/PaintingAndEffectPage1.dart';
import 'package:flutter_widget/view/advance/paintingAndEffect/PaintingAndEffectPage2.dart';
import 'package:flutter_widget/view/advance/paintingAndEffect/PaintingAndEffectPage3.dart';
import 'package:flutter_widget/view/advance/paintingAndEffect/PaintingAndEffectPage4.dart';
import 'package:flutter_widget/view/advance/styling/StylingPage.dart';
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
      children: <Widget>[
        _getMaterialComponents(),
        _getCupertinoComponents(),
        _getInteraction(),
        _getStyling(),
        _getPaintingAndEffect(),
      ],
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

  Widget _getInteraction() {
    return RectangleContainer(
      "Interaction 交互部件",
      subtitle: "Respond to touch events and route users to different views.",
      children: <Widget>[
        ItemView(
          presenter.interactionModels[0].title,
          beHindText: presenter.interactionModels[0].behindTitle,
          subtitle: presenter.interactionModels[0].subtitle,
          onTap: () {
            print(presenter.interactionModels[0].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return TouchInteractionsPage0(
                presenter.interactionModels[0],
              );
            }));
          },
        ),
        ItemView(
          presenter.interactionModels[1].title,
          beHindText: presenter.interactionModels[1].behindTitle,
          subtitle: presenter.interactionModels[1].subtitle,
          onTap: () {
            print(presenter.interactionModels[1].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return TouchInteractionsPage1(
                presenter.interactionModels[1],
              );
            }));
          },
        ),
        ItemView(
          presenter.interactionModels[2].title,
          beHindText: presenter.interactionModels[2].behindTitle,
          subtitle: presenter.interactionModels[2].subtitle,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return RoutingPage(
                presenter.interactionModels[2],
              );
            }));
          },
        ),
      ],
    );
  }

  _getStyling() => RectangleContainer("应用主题管理",
          subtitle:
              "Manage the theme of your app, makes your app responsive to screen sizes, or add padding.",
          children: <Widget>[
            ItemView(
              presenter.styling[0].title,
              beHindText: presenter.styling[0].behindTitle,
              subtitle: presenter.styling[0].subtitle,
              onTap: () {
                print(presenter.styling[0].toString());
                Navigator.push(context, MaterialPageRoute(builder: (setting) {
                  return StylingPage(
                    presenter.styling[0],
                  );
                }));
              },
            ),
          ]);

  Widget _getPaintingAndEffect() {
    return RectangleContainer(
      "一些视觉效果部件",
      subtitle: "These widgets apply visual effects to the children without changing their layout, size, or position.",
      children: <Widget>[
        ItemView(
          presenter.paintingAndEffect[0].title,
          beHindText: presenter.paintingAndEffect[0].behindTitle,
          subtitle: presenter.paintingAndEffect[0].subtitle,
          onTap: () {
            print(presenter.paintingAndEffect[0].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return PaintingAndEffectPage0(
                presenter.paintingAndEffect[0],
              );
            }));
          },
        ),
        ItemView(
          presenter.paintingAndEffect[1].title,
          beHindText: presenter.paintingAndEffect[1].behindTitle,
          subtitle: presenter.paintingAndEffect[1].subtitle,
          onTap: () {
            print(presenter.paintingAndEffect[1].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return PaintingAndEffectPage1(
                presenter.paintingAndEffect[1],
              );
            }));
          },
        ),
        ItemView(
          presenter.paintingAndEffect[2].title,
          beHindText: presenter.paintingAndEffect[2].behindTitle,
          subtitle: presenter.paintingAndEffect[2].subtitle,
          onTap: () {
            print(presenter.paintingAndEffect[2].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return PaintingAndEffectPage2(
                presenter.paintingAndEffect[2],
              );
            }));
          },
        ),
        ItemView(
          presenter.paintingAndEffect[3].title,
          beHindText: presenter.paintingAndEffect[3].behindTitle,
          subtitle: presenter.paintingAndEffect[3].subtitle,
          onTap: () {
            print(presenter.paintingAndEffect[3].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return PaintingAndEffectPage3(
                presenter.paintingAndEffect[3],
              );
            }));
          },
        ),
        ItemView(
          presenter.paintingAndEffect[4].title,
          beHindText: presenter.paintingAndEffect[4].behindTitle,
          subtitle: presenter.paintingAndEffect[4].subtitle,
          onTap: () {
            print(presenter.paintingAndEffect[4].toString());
            Navigator.push(context, MaterialPageRoute(builder: (setting) {
              return PaintingAndEffectPage4(
                presenter.paintingAndEffect[4],
              );
            }));
          },
        ),
      ],
    );
  }
}
