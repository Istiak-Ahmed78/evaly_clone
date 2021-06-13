import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/views/screens/nav_bar/nav_bar.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class SpleshScreen extends StatefulWidget {
  @override
  _SpleshScreenState createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
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
