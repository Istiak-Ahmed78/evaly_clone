import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class AdBanner extends StatelessWidget {
  Widget image({required String address, BoxFit type = BoxFit.cover}) =>
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image:
                DecorationImage(image: AssetImage(address), fit: BoxFit.fill)),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 150.0,
      width: double.infinity,
      child: CarouselSlider(
        items: [
          image(address: kCImage1),
          image(address: kCImage2),
          image(address: kCImage3),
          image(address: kCImage4),
        ],
        options: CarouselOptions(height: 150, viewportFraction: 1),
      ),
    );
  }
}
