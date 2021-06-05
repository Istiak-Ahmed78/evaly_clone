import 'package:evaly_clone/models/campaign_category_list.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  final List<CampaignCategoriListModel> categoriItemList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
    );
  }
}
