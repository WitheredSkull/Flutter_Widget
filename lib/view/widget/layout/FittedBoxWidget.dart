import 'package:flutter/material.dart';
class FittedBoxWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ///可以将子组件自适应父组件，通过fit可以控制适应宽或适应高或整体随父布局大小适应等
    ///Scales and positions its child within itself according to fit.
    return FittedBox(
      ///子组件
      child: Text("FittedBox(BoxFit.contain,这会使文字随FitterBox的大小自动缩放)"),
      ///子组件适应父组件，可以通过BoxFit控制
      fit: BoxFit.contain,
      ///对齐方式
      alignment: Alignment.center,
    );
  }

}