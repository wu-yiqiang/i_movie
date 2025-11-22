import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class HotPage extends StatefulWidget {
  const HotPage({super.key});
  @override
  _HotPage createState() => _HotPage();
}

class _HotPage extends State<HotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("热门"), padding: EdgeInsets.all(padding),));
  }
}
