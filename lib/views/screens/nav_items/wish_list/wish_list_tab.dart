import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/models/wish_list_model.dart';
import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/state_management/wish_list_state.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class WishlistTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              // context.read(tabIndexProvider.notifier).setIndex(0);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
        body: Consumer(builder: (context, ref, _) {
          // ref(wishlistNotifier).isEmpty
          return ref(wishlistNotifier).isEmpty
              ? NoWishlistItem()
              : Container(
                  child: ListView.builder(
                    itemBuilder: (context, index) => WisgListItem(
                      wishListModel: ref(wishlistNotifier)[index],
                    ),
                    shrinkWrap: true,
                    itemCount: ref(wishlistNotifier).length,
                  ),
                );
        }));
  }
}

class NoWishlistItem extends StatelessWidget {
  const NoWishlistItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Center(
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
    );
  }
}

class WisgListItem extends StatelessWidget {
  final WishListModel wishListModel;
  const WisgListItem({Key? key, required this.wishListModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String date = DateFormat.MMMMd('en_US')
        .format(DateTime.parse(wishListModel.dateTimeOfAdding));
    String time =
        DateFormat.jm().format(DateTime.parse(wishListModel.dateTimeOfAdding));
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(wishListModel
                        .priorityProductModel.productImageAddress))),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(wishListModel.priorityProductModel.productName),
                  Text('৳ ${wishListModel.priorityProductModel.currentPrice}'),
                  SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.alarm),
                            SizedBox(
                              width: smallPadding,
                            ),
                            Text('$date at $time'),
                          ],
                        ),
                        GestureDetector(
                          child: Icon(Icons.delete),
                          onTap: () {
                            context
                                .read(wishlistNotifier.notifier)
                                .removeItem(wishListModel.priorityProductModel);
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
