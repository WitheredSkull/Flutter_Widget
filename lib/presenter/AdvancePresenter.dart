import 'package:flutter_widget/model/bean/ItemViewExplainBean.dart';
import 'package:flutter_widget/model/data/WidgetData.dart';

class AdvancePresenter {
  List<ItemViewExplainBean> materialComponents = [];
  List<ItemViewExplainBean> cupertinoComponents = [];
  List<ItemViewExplainBean> interactionModels = [];
  int _cupertinoPage = 5;

  AdvancePresenter() {
    _initItemData();
  }

  _initItemData() {
    _setMaterialComponents();
    _setCupertinoComponents();
    _setInteractionModels();
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

  _setCupertinoComponents() {
    int singlePageWidgetCount = (Cupertino.length / _cupertinoPage).toInt();
    cupertinoComponents.add(ItemViewExplainBean(
        "Cupertino (iOS-style) widgets",
        "Beautiful and high-fidelity widgets for current iOS design language.",
        Cupertino.sublist(0, singlePageWidgetCount).toString(),
        ""));
    cupertinoComponents.add(ItemViewExplainBean(
        "Cupertino (iOS-style) widgets",
        "Beautiful and high-fidelity widgets for current iOS design language.",
        Cupertino.sublist(singlePageWidgetCount, singlePageWidgetCount * 2)
            .toString(),
        ""));
    cupertinoComponents.add(ItemViewExplainBean(
        "Cupertino (iOS-style) widgets",
        "Beautiful and high-fidelity widgets for current iOS design language.",
        Cupertino.sublist(singlePageWidgetCount * 2, singlePageWidgetCount * 3)
            .toString(),
        ""));
    cupertinoComponents.add(ItemViewExplainBean(
        "Cupertino (iOS-style) widgets",
        "Beautiful and high-fidelity widgets for current iOS design language.",
        Cupertino.sublist(singlePageWidgetCount * 3, Cupertino.length)
            .toString(),
        ""));
  }

  _setInteractionModels() {
    int singlePageWidgetCount =
        (InteractionModelsTouchInteractions.length / 2).toInt();
    interactionModels.add(ItemViewExplainBean(
        "Interaction model widgets",
        "Respond to touch events and route users to different views.",
        InteractionModelsTouchInteractions.sublist(0, singlePageWidgetCount)
            .toString(),
        ""));
    interactionModels.add(ItemViewExplainBean(
        "Interaction model widgets",
        "Respond to touch events and route users to different views.",
        InteractionModelsTouchInteractions.sublist(singlePageWidgetCount,
                InteractionModelsTouchInteractions.length)
            .toString(),
        ""));
    interactionModels.add(ItemViewExplainBean(
        "Interaction model widgets",
        "Respond to touch events and route users to different views.",
        InteractionModelsRouting.toString().toString(),
        ""));
  }
}
