import 'package:flutter/material.dart';
import 'package:i_movie/widgets/appbar.dart';
import 'package:i_movie/widgets/login_effect.dart';
import 'package:i_movie/widgets/login_input.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var protect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar("注册", "登录", () {
        print("sdas");
      }),
      body: Container(
        child: ListView(
          children: [
            LoginEffect(protect: protect),
            LoginInput(
              title: "用户名",
              hint: '请输入用户名',
              lineStretch: true,
              onChange: (text) {
                print(text);
              },
              // focusChange: () {
              //   print("sds");
              // },
              // keyboardType: () {
              //   print("sds");
              // },
            ),
            LoginInput(
              title: "密码",
              hint: '请输入密码',
              lineStretch: true,
              obscureText: true,
              onChange: (text) {
                print(text);
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
          ],
        ),
      ),
    );
  }
}
