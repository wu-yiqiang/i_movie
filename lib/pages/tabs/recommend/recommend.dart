import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});
  @override
  _RecommendPage createState() => _RecommendPage();
}

class _RecommendPage extends State<RecommendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text("推荐"), padding: EdgeInsets.all(padding)));
  }
}
