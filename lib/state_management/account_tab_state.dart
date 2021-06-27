import 'package:evaly_clone/state_management/auth_management.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountTab extends StateNotifier<int> {
  AccountTab({int? primaryState}) : super(primaryState ?? 0);
  // List<Widget> pages = [LogInPage(), SignUpScreen(), ProfilePage()];
  setIndex(_index) {
    state = _index;
  }
}

final accountTabStateProvider = StateNotifierProvider<AccountTab, int>((ref) {
  AuthStates authStates = ref.watch(authStateManagementStateNotifier);
  if (authStates == AuthStates.loggedIn)
    return AccountTab(primaryState: 2);
  else
    return AccountTab();
});
