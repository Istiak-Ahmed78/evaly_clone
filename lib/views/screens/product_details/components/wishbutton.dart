import 'package:evaly_clone/models/priorty_product_model.dart';
import 'package:evaly_clone/models/wish_list_model.dart';
import 'package:evaly_clone/state_management/wish_list_state.dart';
import 'package:evaly_clone/views/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishButton extends ConsumerWidget {
  final PriorityProductModel productModel;
  WishButton(this.productModel);
  @override
  Widget build(BuildContext context, ScopedReader reader) {
    return GestureDetector(
      child:
          !reader(wishlistNotifier.notifier).isInTheList(productModel, context)
              ? Icon(FontAwesomeIcons.heart)
              : Icon(
                  FontAwesomeIcons.heart,
                  color: kRed,
                ),
      onTap: () {
        if (reader(wishlistNotifier).contains(productModel)) {
          context.read(wishlistNotifier.notifier).removeItem(productModel);
        } else {
          context.read(wishlistNotifier.notifier).addItem(WishListModel(
              priorityProductModel: productModel,
              dateTimeOfAdding: DateTime.now().toString()));
        }
      },
    );
  }
}
