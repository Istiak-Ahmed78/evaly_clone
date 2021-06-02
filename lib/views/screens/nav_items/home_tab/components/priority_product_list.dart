import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:flutter/material.dart';

class PriorityProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: PriorityProductModel.priorityProductList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
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
    // child: ListView.builder(shrinkWrap: true,itemBuilder: (BuildContext context,int index)=> PriorityProductItem(productImageAdress: PriorityProductModel.priorityProductList[index].productImageAddress, productName: PriorityProductModel.priorityProductList[index].productName, currentPrice: PriorityProductModel.priorityProductList[index].currentPrice, discountPrice: PriorityProductModel.priorityProductList[index].disCountPrice)),
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
    return SizedBox(
      height: 200,
      child: Column(
        children: [
          Image.asset(productImageAdress),
          Text(productName),
          Text('৳ $currentPrice'),
          Text('৳ $discountPrice')
        ],
      ),
    );
  }
}
