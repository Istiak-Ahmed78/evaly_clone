import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';

class PriorityProductList extends StatelessWidget {
  final List<PriorityProductModel> productList;

  PriorityProductList({Key? key, required this.productList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 230,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: productList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) =>
                PriorityProductItem(
                  productImageAdress: productList[index].productImageAddress,
                  currentPrice: productList[index].currentPrice,
                  productName: productList[index].productName,
                  previousPrice: productList[index].previousPrice,
                )));
  }
}

class PriorityProductItem extends StatelessWidget {
  final String productImageAdress;
  final String productName;
  final String currentPrice;
  final String? previousPrice;

  const PriorityProductItem(
      {Key? key,
      required this.productImageAdress,
      required this.productName,
      required this.currentPrice,
      required this.previousPrice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(right: 10, bottom: previousPrice == null ? 22 : 0.0),
      width: 140,
      height: 220,
      child: Card(
        elevation: 0.0,
        color: Theme.of(context).backgroundColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
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
              previousPrice == null
                  ? Container()
                  : Text(
                      '৳ $previousPrice',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough, color: kGrey),
                    ),
              SizedBox(
                height: 6,
              ),
              Text(
                '৳ $currentPrice',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProcuctItem extends StatelessWidget {
  const ProcuctItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 130,
      width: 140,
      decoration: BoxDecoration(
        color: Colors.teal,
      ),
    );
  }
}
