import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountTab extends StateNotifier<int> {
  AccountTab() : super(0);
  setIndex(_index) {
    state = _index;
  }
}

final accountTabStateProvider =
    StateNotifierProvider<AccountTab, int>((ref) => AccountTab());
