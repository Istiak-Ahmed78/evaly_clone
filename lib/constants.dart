import 'package:flutter/material.dart';

//<-----------------Image Location--------------->
const kCImage1 = 'assets/image/promotion__one.png';
const kCImage2 = 'assets/image/promotion_one.png';
const kCImage3 = 'assets/image/promotion_two.png';
const kCImage4 = 'assets/image/promotion_three.png';
const kGallerxy01 = 'assets/image/gallaxym01.png';
const kNoWishList = 'assets/image/empty_wish_list-remove.png';
const kEmtyCard = 'assets/image/empty_shopping_cart-remove.png';
const kCycloneCardImage = 'assets/image/cyclone-remove.png';
const kCocacolaBanner = 'assets/image/coca.png';
const kBelieveInYou = 'assets/image/belive.jpg';
const kFoortiBanner = 'assets/image/foorti.png';
const kEvalyLogo = 'assets/image/evaly_logo.png';
const kEvalyLogoWhite = 'assets/image/Evaly_logo_white-remove.png';
const kXiomi = 'assets/image/redmi_note8.png';
const kNoInternetImage = 'assets/image/no_internet_connection-remove.png';

const populerItemRadius = 60.0;

const defaultFont = 'Roboto';

const isDarkModeKey = 'appmode';

const oneSignalId = '8ec982ef-f097-49ae-81b2-167818d79341';

Widget image({required String address, BoxFit type = BoxFit.cover}) =>
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(address), fit: BoxFit.fill)),
    );
List<String> homeTabBannerImages = [kCImage1, kCImage2, kCImage3, kCImage4];
List<Widget> slideItems(imageList) => [
      for (final sImage in imageList) image(address: sImage),
    ];
List<String> campaingBannerImages = [
  kBelieveInYou,
  kCocacolaBanner,
  kFoortiBanner,
  kCImage1
];
