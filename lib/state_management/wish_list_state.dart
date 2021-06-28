import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:evaly_clone/models/wish_list_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WishListStateNotifier extends StateNotifier<List<WishListModel>> {
  WishListStateNotifier() : super([]);
  addItem(WishListModel wishListModel) => state.add(wishListModel);

  void removeItem(PriorityProductModel productModel) {
    state
        .removeWhere((element) => element.priorityProductModel == productModel);
    print('Wishlist item removed');
    print('Current list legnth: ${state.length}');
  }

  bool isInTheList(
          PriorityProductModel priorityProductModel, BuildContext context) =>
      context
          .read(wishlistNotifier)
          .where(
              (element) => element.priorityProductModel == priorityProductModel)
          .isNotEmpty;
}

final wishlistNotifier =
    StateNotifierProvider<WishListStateNotifier, List<WishListModel>>(
        (ref) => WishListStateNotifier());
