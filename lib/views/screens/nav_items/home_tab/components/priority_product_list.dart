import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';

class PriorityProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 230,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: PriorityProductModel.priorityProductList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) =>
                PriorityProductItem(
                  productImageAdress: PriorityProductModel
                      .priorityProductList[index].productImageAddress,
                  currentPrice: PriorityProductModel
                      .priorityProductList[index].currentPrice,
                  productName: PriorityProductModel
                      .priorityProductList[index].productName,
                  discountPrice: PriorityProductModel
                      .priorityProductList[index].disCountPrice,
                )));
  }
}

class PriorityProductItem extends StatelessWidget {
  final String productImageAdress;
  final String productName;
  final String currentPrice;
  final String discountPrice;

  const PriorityProductItem(
      {Key? key,
      required this.productImageAdress,
      required this.productName,
      required this.currentPrice,
      required this.discountPrice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Card(
        elevation: 0.0,
        color: kWhite,
        child: Padding(
          padding: EdgeInsets.all(smallPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                productImageAdress,
                height: 120,
                width: 120,
              ),
              Text(productName),
              SizedBox(
                height: 3,
              ),
              Text(
                '৳ $currentPrice',
                style: TextStyle(
                    decoration: TextDecoration.lineThrough, color: kGrey),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                '৳ $discountPrice',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
