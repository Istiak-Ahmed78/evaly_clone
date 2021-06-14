import 'package:flutter_riverpod/flutter_riverpod.dart';

class TermsState extends StateNotifier<bool> {
  TermsState() : super(false);
  setIndex(_index) {
    state = _index;
  }
}

final termStateProvider =
    StateNotifierProvider<TermsState, bool>((ref) => TermsState());
