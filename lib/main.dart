import 'package:flutter/material.dart';
import 'package:i_movie/pages/tabs/tabs.dart';
// import 'package:i_movie/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I Movie',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      
      home: TabsPage(),
    );
  }
}

