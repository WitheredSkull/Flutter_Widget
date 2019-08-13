import 'package:flutter/material.dart';

class RawKeyboardListenerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawKeyboardListener(focusNode: FocusNode(), onKey: (value){

    }, child: TextField());
  }

}