import 'package:flutter_riverpod/flutter_riverpod.dart';

class WishButtonState extends StateNotifier<bool> {
  WishButtonState() : super(false);

  chanageButtonState(changedButtonState) {
    state = changedButtonState;
  }
}

final wishButtonStateNotifier =
    StateNotifierProvider<WishButtonState, bool>((_) => WishButtonState());
