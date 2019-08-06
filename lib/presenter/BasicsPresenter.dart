import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';

import 'package:flutter_widget/model/data/WidgetData.dart' as WidgetData;

class BasicsPresenter {
  int singleLayoutWeight;
  int multiLayoutWeight;
  List<ItemViewExplainBean> singleLayoutData = [];
  List<ItemViewExplainBean> multiLayoutData = [];
  List<ItemViewExplainBean> accessibilityData = [];
  List<ItemViewExplainBean> textData = [];

  BasicsPresenter() {
    _initItemData();
  }

  _initItemData() {
    _setLayout();
    _setText();
    _setAccessibility();
  }
  
  _setText(){
    textData.add(ItemViewExplainBean("Text 文字小部件", "Display and style text.", WidgetData.Text.toString(), ""));
  }

  _setLayout() {
    singleLayoutWeight = (WidgetData.LAYOUT_SINGLE.length ~/ 3).toInt();
    multiLayoutWeight = (WidgetData.LAYOUT_MULTI.length ~/ 3).toInt();
    singleLayoutData.add(ItemViewExplainBean(
        "Single-child 布局部件(壹)",
        "Single-child layout widgets",
        WidgetData.LAYOUT_SINGLE.sublist(0, singleLayoutWeight).toString(),
        ""));
    singleLayoutData.add(ItemViewExplainBean(
        "Single-child 布局部件(贰)",
        "Single-child layout widgets",
        WidgetData.LAYOUT_SINGLE
            .sublist(singleLayoutWeight, singleLayoutWeight * 2)
            .toString(),
        ""));
    singleLayoutData.add(ItemViewExplainBean(
        "Single-child 布局部件(叁)",
        "Single-child layout widgets",
        WidgetData.LAYOUT_SINGLE
            .sublist(singleLayoutWeight * 2, WidgetData.LAYOUT_SINGLE.length)
            .toString(),
        ""));
    multiLayoutData.add(ItemViewExplainBean(
        "Multi-child 布局部件(壹)",
        "Multi-child layout widgets",
        WidgetData.LAYOUT_MULTI.sublist(0, multiLayoutWeight).toString(),
        ""));
    multiLayoutData.add(ItemViewExplainBean(
        "Multi-child 布局部件(贰)",
        "Multi-child layout widgets",
        WidgetData.LAYOUT_MULTI
            .sublist(multiLayoutWeight, multiLayoutWeight * 2)
            .toString(),
        ""));
    multiLayoutData.add(ItemViewExplainBean(
        "Multi-child 布局部件(叁)",
        "Multi-child layout widgets",
        WidgetData.LAYOUT_MULTI
            .sublist(multiLayoutWeight * 2, WidgetData.LAYOUT_MULTI.length)
            .toString(),
        ""));
  }

  _setAccessibility() {
    accessibilityData.add(ItemViewExplainBean("Accessibility",
        "Make your app accessible.", WidgetData.Accessibility.toString(), "无障碍功能可达性，实际使用几率微乎其微"));
  }
}
