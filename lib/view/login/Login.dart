import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_widget/view/base/BaseState.dart';

class LoginPage extends StatefulWidget {
  final _title = "登录";

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState(_title, null);
  }
}

class LoginState extends BaseState<LoginPage> {
  var isFill = false;
  var _account, _password;
  var _key = GlobalKey<FormState>();
  var accountController = TextEditingController();
  var pwdController = TextEditingController();
  double opacity = 0;

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
            isFill =
                !(accountController.text.isEmpty || pwdController.text.isEmpty);
            setState(() {});
          },
          key: _key,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
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
                  _accountWidget(),
                  SizedBox(
                    height: 10,
                  ),
                  _passwordWidget(),
                  SizedBox(
                    height: 50,
                  ),
                  _loginButton(),
                  SizedBox(
                    height: 30,
                  ),
                  _accountInfoWidget(),
                ],
              )
            ],
          )),
    );
  }

  _accountWidget() => TextFormField(
        maxLength: 11,
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
            return null;
          } else {
            return "手机号错误（需要11位）";
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
      );

  _passwordWidget() => TextFormField(
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
          return null;
        },
        onSaved: (text) {
          _password = text;
          setState(() {});
        },
        onEditingComplete: () {
          print("onEditingComplete");
        },
        onFieldSubmitted: (text) {
          print("onFieldSubmitted");
        },
      );

  _loginButton() => Container(
        decoration: BoxDecoration(
            color: isFill
                ? Colors.lightBlue.withOpacity(0.7)
                : Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(60)),
        child: MaterialButton(
          minWidth: 200,
          height: 50,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          onPressed: () {
            if (_key.currentState.validate()) {
              _key.currentState.save();
              opacity = 1;
            } else {
              opacity = 0;
            }
          },
          textColor: Colors.white,
          child: Text("登录"),
        ),
      );

  _accountInfoWidget() => Opacity(
      opacity: opacity,
      child: Container(
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints(minHeight: 50, maxWidth: 200),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text("输入的账号：$_account 密码：$_password"),
        ),
      ));
}
