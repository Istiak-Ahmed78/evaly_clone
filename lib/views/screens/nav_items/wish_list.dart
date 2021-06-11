import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WishlistTab extends StatelessWidget {
  static String navTitle = 'Wishlist';
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'WishList',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).secondaryHeaderColor),
        ),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            context.read(tabIndexProvider.notifier).setIndex(0);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              kNoWishList,
              height: _size.height * 0.3,
              width: _size.width * 0.75,
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'You haven\'t added anything to wish list',
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w600, color: kLightDark),
            ),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
