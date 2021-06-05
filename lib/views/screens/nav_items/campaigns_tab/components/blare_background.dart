import 'dart:ui';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../campaigns_tab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlarBackGround extends ConsumerWidget {
  const BlarBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader reader) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: double.infinity,
      decoration: BoxDecoration(
          color: kGreen,
          image: DecorationImage(
              image: AssetImage(campaingBannerImages[reader(cousulaIndex)]),
              fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: new Container(
          decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
        ),
      ),
    );
  }
}
