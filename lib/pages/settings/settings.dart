import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  _SettingsPage createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(child: Text("设置"), padding: EdgeInsets.all(padding)),
      ),
    );
  }
}
