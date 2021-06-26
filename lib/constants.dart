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

const productDetails =
    'Evaly is a Bangladeshi technology company that specializes in e-commerce, food & grocery delivery, classifieds, accounting & inventory solutions, and other logistics. The platform currently features over 35,000 registered sellers and partners and over 4,000 restaurants, covering the automobile and tech market to daily grocery shopping, andmore. Evaly thrives continuously to impact the overall lifestyle of the socio-economic classes of Bangladesh. It strives to provide every kind of goods and products from every sector to its consumers. Evaly currently has 4.5 million registered users, with 1150 employees currently. The average basket size of a transaction at Evaly is around 10,000 BDT. During special campaigns, Evaly generates over 200,000 visitors per minute in app/web. Evaly was founded in 2018 by Mohammad Rassel, the current Managing Director & CEO and Shamima Nasrin, Co-founder & Chairman. It is headquartered in Dhanmondi, Dhaka, Bangladesh.';
const powderMilkImageUrl =
    'https://needboxbd.com/wp-content/uploads/2021/01/super-milk-500gm.jpg';
