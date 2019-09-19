import 'package:flutter/material.dart';
import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/view/base/BaseCodeState.dart';
import 'package:flutter_widget/view/widget/custom/DefaultButton.dart';
import 'package:flutter_widget/view/widget/custom/Explan.dart';
import 'package:flutter_widget/view/widget/custom/ItemName.dart';
import 'package:flutter_widget/application/app.dart' as APP;
import 'package:flutter_widget/view/widget/material/CheckBoxWidget.dart';
import 'package:flutter_widget/view/widget/material/DateWidget.dart';

class MaterialPage3 extends StatefulWidget {
  ItemViewExplainBean data;

  MaterialPage3(this.data);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MaterialPage3State();
  }
}

class MaterialPage3State extends BaseCodeState<MaterialPage3> {
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
      ItemName("CheckBox"),
      CheckBoxWidget(),
      ItemName("DatePicker"),
      DefaultButton("DatePicker", () {
        DateWidget.showDatePickerDialog(getContext());
      }),
      ItemName("TimePicker"),
      DefaultButton("TimePicker", () {
        DateWidget.showTimePickerDialog(getContext());
      }),
    ]));
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
