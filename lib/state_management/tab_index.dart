import 'package:flutter_riverpod/flutter_riverpod.dart';

class TabIndex extends StateNotifier<int> {
  TabIndex() : super(0);
  setIndex(_index) {
    state = _index;
  }
}

final tabIndexProvider =
    StateNotifierProvider<TabIndex, int>((ref) => TabIndex());
