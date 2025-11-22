import 'package:flutter/material.dart';
import 'package:i_movie/util/string_util.dart';
import 'package:i_movie/widgets/appbar.dart';
import 'package:i_movie/widgets/login_effect.dart';
import 'package:i_movie/widgets/login_input.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback onJumpToLogin;

  const RegisterPage({super.key, required this.onJumpToLogin});
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var protect = false;
  bool loginEnable = false;
  String userName;
  String password;
  String rePassword;
  String imooocId;
  String orderId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar("注册", "登录", widget.onJumpToLogin),
      body: Container(
        child: ListView(
          children: [
            LoginEffect(protect: protect),
            LoginInput(
              title: "用户名",
              hint: '请输入用户名',
              lineStretch: true,
              onChange: (text) {
                userName = text;
                checkInput();
              },
            ),
            LoginInput(
              title: "密码",
              hint: '请输入密码',
              lineStretch: true,
              obscureText: true,
              onChange: (text) {
                print(text);
                password = text;
                checkInput();
              },
              focusChange: (focus) {
                this.setState(() {
                  protect = focus;
                });
              },
            ),
            LoginInput(
              title: "确认密码",
              hint: '请再次输入密码',
              lineStretch: true,
              obscureText: true,
              onChange: (text) {
                rePassword = text;
                checkInput();
              },
              focusChange: (focus) {
                this.setState(() {
                  protect = focus;
                });
              },
              // keyboardType: () {
              //   print("sds");
              // },
            ),
            LoginInput(
              title: "幕客网ID",
              hint: '请输入幕客网ID',
              lineStretch: true,
              onChange: (text) {
                imooocId = text;
                checkInput();
              },
            ),
            LoginInput(
              title: "课程订单号",
              hint: '请输入课程订单号',
              keyboardType: TextInputType.number,
              lineStretch: true,
              onChange: (text) {
                orderId = text;
                checkInput();
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: _LoginButton(),
            ),
          ],
        ),
      ),
    );
  }

  void checkInput() {
    bool enable;
    if (isNotEmpty(userName) &&
        isNotEmpty(password) &&
        isNotEmpty(rePassword) &&
        isNotEmpty(imooocId) &&
        isNotEmpty(orderId)) {
      enable = true;
    } else {
      enable = false;
    }
    setState(() {
      loginEnable = enable;
    });
  }

  _LoginButton() {
    return InkWell(
      onTap: () {
        if (loginEnable) {
          // send();
        } else {
          print("sd");
        }
      },
      child: Text("sdsd"),
    );
  }
}
