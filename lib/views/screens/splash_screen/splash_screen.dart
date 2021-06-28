import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:evaly_clone/views/screens/nav_bar/nav_bar.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpleshScreen extends StatefulWidget {
  @override
  _SpleshScreenState createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      context.read(appThemeStateProvider.notifier).getCurrentTheme(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => NavBarPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBackGround,
      body: Center(
        child: Container(
            height: 190, width: 190, child: Image.asset(kEvalyLogoWhite)),
      ),
    );
  }
}
