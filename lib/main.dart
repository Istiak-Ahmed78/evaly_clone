import 'package:evaly_clone/views/screens/nav_bar/nav_bar.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kWhite),
      home: NavBarPage(),
    );
  }
}
