import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:evaly_clone/views/screens/nav_items/home_tab/components/conponats.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';

class StoreSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final List<PriorityProductModel> productList;
  const StoreSection(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.productList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
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
          PriorityProductList(
            productList: productList,
          )
        ],
      ),
    );
  }
}
