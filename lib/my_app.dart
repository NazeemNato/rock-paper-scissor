import 'package:flutter/material.dart';
import 'package:rps/src/screen/homeScren.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '✊🏻 ✌🏻 ✋🏻',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route:(context)=>HomeScreen(),
      },
    );
  }
}