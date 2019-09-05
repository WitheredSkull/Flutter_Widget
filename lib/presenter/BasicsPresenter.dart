import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';

import 'package:flutter_widget/model/data/WidgetData.dart' as WidgetData;

class BasicsPresenter {
  int singleLayoutWeight;
  int multiLayoutWeight;
  List<ItemViewExplainBean> singleLayoutData = [];
  List<ItemViewExplainBean> multiLayoutData = [];
  List<ItemViewExplainBean> accessibilityData = [];
  List<ItemViewExplainBean> basicData = [];
  ItemViewExplainBean textData;
  ItemViewExplainBean inputData;
  ItemViewExplainBean assetsImagesIconsData;
  List<ItemViewExplainBean> animationMotionData = [];

  BasicsPresenter() {
    _initItemData();
  }

  _initItemData() {
    _setBasic();
    _setLayout();
    _setText();
    _setInput();
    _setAssetsImagesIconsData();
    _setAccessibility();
    _setAnimationMotion();
  }

  _setBasic() {
    basicData.add(ItemViewExplainBean(
        "Basic 基础部件(壹)",
        "Widgets you absolutely need to know before building your first Flutter app.",
        WidgetData.Basics.sublist(0, 3).toString(),
        ""));
    basicData.add(ItemViewExplainBean(
        "Basic 基础部件(贰)",
        "Widgets you absolutely need to know before building your first Flutter app.",
        WidgetData.Basics.sublist(3, 6).toString(),
        ""));
    basicData.add(ItemViewExplainBean(
        "Basic 基础部件(叁)",
        "Widgets you absolutely need to know before building your first Flutter app.",
        WidgetData.Basics.sublist(6, WidgetData.Basics.length - 1).toString(),
        ""));
  }

  _setText() {
    textData = ItemViewExplainBean("Text 文字系列小部件", "Display and style text.",
        WidgetData.Text.toString(), "");
  }

  _setInput() {
    inputData = ItemViewExplainBean(
        "Input 输入系列小部件",
        "Take user input in addition to input widgets in Material Components and Cupertino.",
        WidgetData.Input.toString(),
        "");
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
    accessibilityData.add(ItemViewExplainBean(
        "Accessibility",
        "Make your app accessible.",
        WidgetData.Accessibility.toString(),
        "无障碍功能可达性，实际使用几率微乎其微"));
  }

  _setAssetsImagesIconsData() {
    assetsImagesIconsData = ItemViewExplainBean(
        "Assets,Images and Icons",
        "Manage assets, display images, and show icons.",
        WidgetData.AssetsImagesIcons.toString(),
        "");
  }

  void _setAnimationMotion() {
    animationMotionData.add(ItemViewExplainBean(
        "Animation and motion",
        "Bring animations to your app.",
        WidgetData.AnimationAndMotion.sublist(0, 6).toString(),
        ""));
    animationMotionData.add(ItemViewExplainBean(
        "Animation and motion",
        "Bring animations to your app.",
        WidgetData.AnimationAndMotion.sublist(6, 12).toString(),
        ""));
    animationMotionData.add(ItemViewExplainBean(
        "Animation and motion",
        "Bring animations to your app.",
        WidgetData.AnimationAndMotion.sublist(
                12, WidgetData.AnimationAndMotion.length)
            .toString(),
        ""));
  }
}
