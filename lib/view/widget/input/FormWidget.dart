import 'package:flutter/material.dart';
import 'package:flutter_widget/view/widget/custom/Toast.dart';

class FormWidget extends StatelessWidget {
  GlobalKey<FormState> inputKey;
  TextEditingController controller;

  FormWidget(this.inputKey, this.controller);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(

        ///传入一个可以控制整个表单信息的key
        key: inputKey,
        ///是否开启自动验证
        autovalidate: true,
        onWillPop: () {
          if (controller.text.length > 3) {
            return null;
          } else {
            return showDialog(
                context: context,
                barrierDismissible: true,
                builder: (context) => AlertDialog(
                      title: Text("是否停止输入"),
                      content: Text("请确认是否停止输入"),
                      actions: <Widget>[
                        FlatButton(
                            onPressed: () {
                              print("停止输入");
                              Navigator.pop(context, true);
                            },
                            child: Text("是"))
                      ],
                    ));
          }
        },
        onChanged: () {
          Toast().show("测试${controller.text}");
          if (controller.text.length < 3) {
            print("字数不够");
          }else{
            print("字数够了");
          }
        },
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: controller,
              decoration: InputDecoration(hintText: "请输入最少三位数"),
              onSaved: (data) {
                print("输入完成");
              },
              validator: (data) {
                if (data.length < 3) {
                  return "至少需要输入三位";
                } else {
                  return null;
                }
              },
            )
          ],
        ));
  }
}
