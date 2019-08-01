import 'package:flutter/material.dart';

class ExcludeSemanticsWidget extends StatelessWidget {
  bool isOpenAccessibility = false;
  VoidCallback onPressed;


  ExcludeSemanticsWidget(this.isOpenAccessibility,this.onPressed,);

  @override
  Widget build(BuildContext context) {
    ///维护一个语义树，可以自由开关是否被系统排除在外，被排除在外的无法使用系统自带的辅助功能
    ///A widget that drops all the semantics of its descendants. This can be used to hide subwidgets that would otherwise be reported but that would only be confusing. For example, the Material Components Chip widget hides the avatar since it is redundant with the chip label.
    return ExcludeSemantics(
      ///是否被排除在语义树外(Semantics)
      excluding: !isOpenAccessibility,
      child: MaterialButton(onPressed: onPressed,child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: Colors.lightBlue,
        ),
        child: Text(
          "${isOpenAccessibility ? "关闭" : "开启"}Semantics accessibility",
          style: TextStyle(color: Colors.white),
        ),
      ),),
    );
  }
}
