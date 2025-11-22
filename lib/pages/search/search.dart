import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Container(child: Text("搜索页面"), padding: EdgeInsets.all(padding),)),
    );
  }
}
