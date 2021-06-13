import 'package:flutter_riverpod/flutter_riverpod.dart';

class CloudMessagingState extends StateNotifier<int> {
  CloudMessagingState() : super(0);
  void increaseValue() {
    state++;
  }
}

final cloudMessagingStateNotifierProvider =
    StateNotifierProvider<CloudMessagingState, int>(
        (ref) => CloudMessagingState());
