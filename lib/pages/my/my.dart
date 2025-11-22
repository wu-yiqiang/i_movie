import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});
  @override
  _MyPage createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Container(child: Text("我的"), padding: EdgeInsets.all(padding),)),
    );
  }
}
