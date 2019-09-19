import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/model/data/WidgetData.dart';

class AdvancePresenter {
  List<ItemViewExplainBean> materialComponents = [];

  AdvancePresenter() {
    _initItemData();
  }

  _initItemData() {
    _setMaterialComponents();
  }

  _setMaterialComponents() {
    materialComponents.add(ItemViewExplainBean(
        "Material Components",
        "App structure and navigation",
        MaterialComponentsAppStructureAndNavigation.toString(),
        ""));
    materialComponents.add(ItemViewExplainBean("Material Components", "Buttons",
        MaterialComponentBottons.toString(), ""));
    materialComponents.add(ItemViewExplainBean(
        "Material Components",
        "Input and selections",
        MaterialComponentInputAndSelections.toString(),
        ""));
    materialComponents.add(ItemViewExplainBean(
        "Material Components",
        "Dialogs, alerts, and panels",
        MaterialComponentDialogAlertsPanels.toString(),
        ""));
    materialComponents.add(ItemViewExplainBean(
        "Material Components",
        "Information displays",
        MaterialComponentInformationDisplays.toString(),
        ""));
    materialComponents.add(ItemViewExplainBean("Material Components", "Layout",
        MaterialComponentLayout.toString(), ""));
  }
}
