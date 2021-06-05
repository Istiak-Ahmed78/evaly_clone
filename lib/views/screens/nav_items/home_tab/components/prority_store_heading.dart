import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';

class CategotyTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  const CategotyTitle({Key? key, required this.title, required this.subTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            SizedBox(
              height: 5,
            ),
            Text(subTitle)
          ],
        ),
        Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Text(
            'Show More>',
            style: TextStyle(color: kGrey, fontSize: 15),
          ),
        )
      ],
    );
  }
}
