import 'package:flutter/material.dart';
import 'package:flutter_widget/view/base/BaseState.dart';

class LoginPage extends StatefulWidget {
  final _title = "登录";
  var isFill = false;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState(_title, null);
  }
}

class LoginState extends BaseState<LoginPage> {
  var _account, password;
  var _key = GlobalKey<FormState>();
  var accountController = TextEditingController();
  var pwdController = TextEditingController();

  LoginState(String title, List<Widget> appbarActions)
      : super(title, appbarActions);

  @override
  String initAppbarActions() {
    return null;
  }

  @override
  Widget initScaffoldBody() {
    return Center(
      heightFactor: 500,
      child: Form(
          onChanged: () {
            widget.isFill =
            !(accountController.text.isEmpty || pwdController.text.isEmpty);
            setState(() {
              
            });
          },
          key: _key,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 56,
                width: 150,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.lightBlue,
                  size: 60,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.grey.withOpacity(0.3)),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: accountController,
                decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Icon(Icons.person),
                    ),
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3)),
                    hintText: "请输入手机号",
                    labelText: "手机号",
                    labelStyle: TextStyle(color: Colors.lightBlue)),
                validator: (text) {
                  if (text.length == 11) {
                    return "";
                  } else {
                    return "手机号错误";
                  }
                },
                onSaved: (text) {
                  _account = text;
                },
                onEditingComplete: () {
                  print("onEditingComplete");
                },
                onFieldSubmitted: (text) {
                  print("onFieldSubmitted");
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: pwdController,
                obscureText: true,
                decoration: InputDecoration(
                    icon: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Icon(
                          Icons.lock,
                        )),
                    hintText: "请输入密码",
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.3)),
                    labelText: "密码",
                    labelStyle: TextStyle(color: Colors.lightBlue)),
                validator: (text) {
                    return "";
                },
                onSaved: (text) {
                  _account = text;
                },
                onEditingComplete: () {
                  print("onEditingComplete");
                },
                onFieldSubmitted: (text) {
                  print("onFieldSubmitted");
                },
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(60)),
                child: MaterialButton(
                  minWidth: 200,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  onPressed: () {
                    if(accountController.text.length == 11){
                      _key.currentState.save();
                    }else{
                      _key.currentState.validate();
                    }
                  },
                  textColor: _getSubmitWidgetColor(),
                  child: Text("登录"),
                ),
              ),
            ],
          )),
    );
  }

  _getSubmitWidgetColor() => widget.isFill ? Colors.white : Colors.grey.withOpacity(0.7);
}
