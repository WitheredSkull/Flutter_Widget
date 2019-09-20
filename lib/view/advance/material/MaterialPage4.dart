import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/material/AlertDialogWidget.dart';
import 'package:flutter_widget/view/widget/material/BottomSheetWidget.dart';
import 'package:flutter_widget/view/widget/material/ExpansionPanelWidget.dart';
import 'package:flutter_widget/view/widget/material/SimpleDialogWidget.dart';
import 'package:flutter_widget/view/widget/material/SnackBarWidget.dart';

typedef StateChangeListener = void Function();

class MaterialPage4 extends StatefulWidget {
  ItemViewExplainBean data;

  MaterialPage4(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaterialPage4State();
  }
}

class MaterialPage4State extends BaseCodeState<MaterialPage4> {
  @override
  Widget body() {
    return SingleChildScrollView(
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Explan(
          widget.data.title,
          marginTop: APP.AssetsSize.SIZE_DEFAULT_PADDING,
          children: <Widget>[
            Text(widget.data.subtitle),
            Text(widget.data.explain)
          ],
        ),
        ItemName("AlertDialog"),
        DefaultButton("点击弹出AlertDialog",
            () => AlertDialogWidget.showAlertDialog1(context)),
        ItemName("BottomSheet"),
        DefaultButton(
            "点击弹出BottomSheetDialog",
            () => BottomSheetWidget.showBottomSheet1(
                getContext(), getScaffoldKey())),
        ItemName("ExpansionPanel"),
        ExpansionPanelWidget(),
        ItemName("SimpleDialog"),
        DefaultButton(
          "点击弹出SimpleDialog",
          () => SimpleDialogWidget.showSimpleDialog1(context),
        ),
        ItemName("SnackBar"),
        DefaultButton(
          "点击弹出SnackBar",
              () => SnackBarWidget.showSnackBar(getScaffoldKey()),
        ),
        SizedBox(height: APP.AssetsSize.PAGE_EXPANDED,)
      ]),
    );
  }

  @override
  void initData() {
    // TODO: implement initData
  }

  @override
  String title() {
    // TODO: implement title
    return widget.data.title;
  }
}
