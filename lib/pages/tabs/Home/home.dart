import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';
import 'package:i_movie/pages/tabs/hot/hot.dart';
import 'package:i_movie/pages/tabs/recommend/recommend.dart';
import 'package:i_movie/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final List tabs = [
    {'tab': '推荐', 'page': RecommendPage()},
    {'tab': '热门', 'page': HotPage()},
    {'tab': '影视', 'page': HotPage()},
    {'tab': '日常', 'page': HotPage()},
    {'tab': '其他', 'page': HotPage()},
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: HomeAppbar(),
          bottom: TabBar(
            tabs: tabs.map((e) => Tab(text: e['tab'])).toList(),
            labelColor: primary,
            indicatorColor: primary,
          ),
        ),
        body: TabBarView(
          children: tabs!.map((item) {
            return Container(child: item['page']);
          }).toList(),
        ),
      ),
    );
  }
}
