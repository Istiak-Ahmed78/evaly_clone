import 'package:flutter_riverpod/flutter_riverpod.dart';

class RadioMode extends StateNotifier<int> {
  RadioMode() : super(0);
  void changeValue(int value) {
    state = value;
  }
}

final radioModeProvider =
    StateNotifierProvider<RadioMode, int>((ref) => RadioMode());
