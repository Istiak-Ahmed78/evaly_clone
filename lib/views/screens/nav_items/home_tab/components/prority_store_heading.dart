import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';

class PriorityStoredHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Evaly Prority Store',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            SizedBox(
              height: 5,
            ),
            Text('Prority Servicest!')
          ],
        ),
        Text(
          'Show More>',
          style: TextStyle(color: kGrey, fontSize: 15),
        )
      ],
    );
  }
}
