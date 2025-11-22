import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';
import 'package:i_movie/pages/my/my.dart';
import 'package:i_movie/pages/tabs/Home/home.dart';
import 'package:i_movie/util/EventBus.dart';
import 'package:i_movie/widgets/appbar.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});
  @override
  _TabsPage createState() => _TabsPage();
}

class _TabsPage extends State<TabsPage> {
  final bottomTabs = [HomePage(), MyPage()];
  var index = 0;
  @override
  Widget build(BuildContext context) {
    eventBus.on(Events.BOTTOMBAR.name, (value) {
      setState(() {
        this.index = value;
      });
    });
    return Scaffold(
      body: bottomTabs[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '首页',
            activeIcon: Icon(Icons.home, color: primary[50]),
            backgroundColor: primary[50],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts, color: Colors.black),
            label: '我的',
            activeIcon: Icon(Icons.manage_accounts, color: primary[50]),
            backgroundColor: primary[50],
          ),
        ],
        currentIndex: index,
        selectedItemColor: primary[50],
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
      ),
    );
  }
}
