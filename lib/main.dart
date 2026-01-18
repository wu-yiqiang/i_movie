import 'package:flutter/material.dart';
import 'package:i_movie/pages/tabs/tabs.dart';
import 'package:i_movie/util/EventBus.dart';
// import 'package:i_movie/pages/register.dart';
import 'package:i_movie/navigator/navigators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    eventBus.on(Events.NAVIGATE.name, (data) {
      var {'path':path, 'args':args} = data;
      // Navigate.pushNamed(context, path, arguments: args);
    });
    return MaterialApp(
      title: 'I Movie',
      home: TabsPage(),
    );
  }
}
