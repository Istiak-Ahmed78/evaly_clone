import '../constants.dart';

class PriorityProductModel {
  final String productName;
  final String productImageAddress;
  final String currentPrice;
  final String? previousPrice;

  PriorityProductModel(
      {required this.productName,
      required this.currentPrice,
      required this.productImageAddress,
      this.previousPrice});
  static List<PriorityProductModel> priorityProductList = [
    PriorityProductModel(
        productName: 'Samsung Galaxy M01c',
        currentPrice: '11,999',
        productImageAddress: kGallerxy01,
        previousPrice: '11,340'),
    PriorityProductModel(
        productName: 'Redmi Note 8',
        currentPrice: '16,000',
        productImageAddress: kXiomi)
  ];
}
