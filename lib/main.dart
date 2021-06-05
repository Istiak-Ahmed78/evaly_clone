import 'package:evaly_clone/views/screens/nav_bar/nav_bar.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: kTransparent));
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kWhite,
          backgroundColor: kLightGrey,
          highlightColor: kGrey,
          secondaryHeaderColor: kBlack,
          // backgroundColor: Color.fromRGBO(184, 186, 185, 1.0),
          textTheme: TextTheme(
            subtitle1: TextStyle(color: kWhite),
          )),
      home: NavBarPage(),
    );
  }
}
