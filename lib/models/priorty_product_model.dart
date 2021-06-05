import '../constants.dart';

class PriorityProductModel {
  final String productName;
  final String productImageAddress;
  final String currentPrice;
  final String disCountPrice;

  PriorityProductModel(
      {required this.productName,
      required this.currentPrice,
      required this.productImageAddress,
      required this.disCountPrice});
  static List<PriorityProductModel> priorityProductList = [
    PriorityProductModel(
        productName: 'Samsung Galaxy M01c',
        currentPrice: '11,999',
        productImageAddress: kGallerxy01,
        disCountPrice: '11,340')
  ];
}
