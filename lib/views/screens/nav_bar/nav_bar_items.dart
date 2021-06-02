import 'package:evaly_clone/views/screens/nav_items/home_tab/home_tab.dart';
import 'package:evaly_clone/views/screens/nav_items/nav_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NaviBarItem {
  final String title;
  final Widget widget;
  final IconData iconData;
  final int index;

  NaviBarItem(
      {required this.title,
      required this.widget,
      required this.iconData,
      required this.index});

  static List<NaviBarItem> navBars = [
    NaviBarItem(
        title: 'Home', widget: HomeTab(), iconData: Icons.home, index: 0),
    NaviBarItem(
        title: 'Wishlist',
        widget: WishlistTab(),
        iconData: FontAwesomeIcons.heart,
        index: 1),
    NaviBarItem(
        title: 'Card',
        widget: CardTab(),
        iconData: FontAwesomeIcons.shoppingBag,
        index: 2),
    NaviBarItem(
        title: 'Account',
        widget: AccountTab(),
        iconData: Icons.person,
        index: 3)
  ];
}
