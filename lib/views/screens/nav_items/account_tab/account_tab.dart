import 'package:evaly_clone/state_management/account_tab_state.dart';
import 'package:evaly_clone/views/screens/nav_items/account_tab/logged_in/logged_in_page.dart';
import 'package:evaly_clone/views/screens/nav_items/account_tab/tabs/log_in/log_in.dart';
import 'package:evaly_clone/views/screens/nav_items/account_tab/tabs/sign_up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'tabs/profile/profile.dart';

class AccountTab extends ConsumerWidget {
  AccountTab({Key? key}) : super(key: key);

  bool isLoggedIn = false;
  List<Widget> pages = [LogInPage(), SignUpScreen(), ProfilePage()];
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return IndexedStack(
      index: watch(accountTabStateProvider),
      children: pages,
    );
  }
}
