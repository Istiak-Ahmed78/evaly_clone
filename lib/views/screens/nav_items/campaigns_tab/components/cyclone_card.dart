import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class CycloneCard extends StatelessWidget {
  const CycloneCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Card(
      elevation: 0.0,
      // color: kBlue,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Container(
        height: _size.height * 0.35,
        width: _size.width * .4,
        padding: EdgeInsets.all(moreSmallPadding),
        // color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Image.asset(kCycloneCardImage),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  left: smallPadding,
                  right: aBitLeargePadding,
                  bottom: smallPadding),
              child: Text(
                'Evaly Cyclne | 4 june | 10 PM',
                textAlign: TextAlign.left,
              ),
            )
          ],
        ),
      ),
    );
  }
}
