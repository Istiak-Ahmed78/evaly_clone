import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../constants.dart';
import 'dart:math' as math;
import 'components/reviws&rattings.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(child: SrollingWidgets(size: _size)),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: Theme.of(context).backgroundColor,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(FontAwesomeIcons.heart),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          color: kMyCardColor2,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            constraints: BoxConstraints(minWidth: 60),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Text('MY CART'),
                                  flex: 4,
                                ),
                                Expanded(flex: 1, child: Text('0'))
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        color: kAvaibleShopButtonColor,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            'AVAILABLE AT SHOP',
                            style: TextStyle(color: kLightPrimaryColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class SrollingWidgets extends StatelessWidget {
  const SrollingWidgets({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 70),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Align(
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                  ),
                  alignment: Alignment.topLeft,
                ),
              ),
              Expanded(
                child: Container(
                  height: _size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(powderMilkImageUrl))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Align(
                  child: IconButton(
                    icon: Icon(Icons.share),
                    onPressed: () {},
                  ),
                  alignment: Alignment.topRight,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Marks Full Cream Milk Powder Poly- 1kg - GBVIPOF0019',
                style: TextStyle(
                    color: Theme.of(context).secondaryHeaderColor,
                    fontSize: 20),
              ).pSymmetric(h: 10, v: 20),
              devider(context: context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SKU',
                    style: TextStyle(
                        color: Theme.of(context).highlightColor,
                        fontFamily: defaultFont,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '0X4A796',
                    style: TextStyle(
                        color: kRed, fontFamily: defaultFont, fontSize: 18),
                  ),
                  Transform.rotate(
                    angle: math.pi,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                  )
                ],
              ).pSymmetric(v: 15, h: 10),
              devider(context: context),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).highlightColor,
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  productDetails.text.size(18).make(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Specification',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).highlightColor,
                        fontSize: 19),
                  ),
                  ProductSpecification(
                    brand: 'MARKS',
                    capacity: '1 Kg',
                    productType: 'Powder Milk',
                    catagory: 'Powder Milk',
                    wight: '1 Kg',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ).pSymmetric(h: 10, v: 10),
              devider(context: context),
              ReviewsAndRattings(
                totalRattings: 4,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProductSpecification extends StatelessWidget {
  ProductSpecification({
    Key? key,
    required this.brand,
    required this.capacity,
    required this.catagory,
    required this.productType,
    required this.wight,
  }) : super(key: key);
  final String brand, catagory, wight, productType, capacity;
  @override
  Widget build(BuildContext context) {
    List<String> headers = [
      'Brand',
      'Category',
      'Weight',
      'Product Type',
      'Capacity'
    ];
    List<String> values = [brand, capacity, catagory, productType, wight];
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            for (var h in headers)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  h,
                  style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context)
                          .secondaryHeaderColor
                          .withOpacity(0.6),
                      fontWeight: FontWeight.w500),
                ),
              )
          ]),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var v in values)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(
                    v,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                )
            ],
          ),
          Container()
        ],
      ),
    );
  }
}

devider(
    {height = 10.0, width = double.infinity, required BuildContext context}) {
  return Container(
    height: height,
    width: width,
    color: Theme.of(context).primaryColor,
  );
}
