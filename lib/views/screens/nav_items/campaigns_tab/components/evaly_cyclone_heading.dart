import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class EvalyCycloneHeading extends StatelessWidget {
  const EvalyCycloneHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).secondaryHeaderColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(aBitLeargePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Evaly Cyclone',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: moreSmallPadding,
                ),
                Text('The Biggest Sale Festival of the Country',
                    style: TextStyle(color: Theme.of(context).primaryColor)),
              ],
            ),
            Transform.rotate(
              angle: math.pi,
              child: Icon(
                Icons.arrow_back_ios,
                color: Theme.of(context).backgroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
