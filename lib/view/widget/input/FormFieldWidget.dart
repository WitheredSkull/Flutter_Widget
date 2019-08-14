import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget{
  GlobalKey<FormFieldState<String>> __key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FormField<String>(
      key:__key,
      builder: (context){
      return Column(children: <Widget>[TextField()],);
    },autovalidate: true,
    validator: (data){
//      if(data.length <5){
//        return "字数小于五";
//      }
      return "字数小于五";
    },);
  }

}