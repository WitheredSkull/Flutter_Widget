import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';

import 'package:flutter_widget/application/WidgetData.dart' as WidgetData;

class BasicsPresenter{
  int layoutHalf;
  List<ItemViewExplainBean> itemData = [];
  BasicsPresenter(){
    layoutHalf = (WidgetData.LAYOUT.length ~/ 3).toInt();
    _initItemData();
  }

  _initItemData(){
    itemData.add(ItemViewExplainBean("单个子布局控件(壹)", "Single-child layout widgets", WidgetData.LAYOUT.sublist(0, layoutHalf).toString(), ""));
    itemData.add(ItemViewExplainBean("单个子布局控件(贰)", "Single-child layout widgets", WidgetData.LAYOUT.sublist(layoutHalf, layoutHalf * 2).toString(), ""));
    itemData.add(ItemViewExplainBean("单个子布局控件(叁)", "Single-child layout widgets", WidgetData.LAYOUT.sublist(layoutHalf*2, WidgetData.LAYOUT.length).toString(), ""));
  }
}