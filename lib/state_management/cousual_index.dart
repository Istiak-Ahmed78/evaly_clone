import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampignCousualIndex extends StateNotifier<int> {
  CampignCousualIndex() : super(0);
  setIndex(_index) {
    state = _index;
  }
}
