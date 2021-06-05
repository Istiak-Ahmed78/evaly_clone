import 'package:evaly_clone/views/screens/nav_items/home_tab/components/conponats.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class StoreSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget productListWidget;
  const StoreSection(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.productListWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromRGBO(242, 243, 245, 1.0)),
      padding: EdgeInsets.all(smallPadding),
      margin: EdgeInsets.symmetric(vertical: moreSmallPadding),
      child: Column(
        children: [
          CategotyTitle(
            title: title,
            subTitle: subtitle,
          ),
          SizedBox(
            height: smallPadding,
          ),
          productListWidget
        ],
      ),
    );
  }
}
