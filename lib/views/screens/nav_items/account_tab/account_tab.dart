import 'package:evaly_clone/views/screens/nav_items/account_tab/logged_in/logged_in_page.dart';
import 'package:evaly_clone/views/screens/nav_items/account_tab/not_logged_in/not_logged_in_page.dart';
import 'package:flutter/material.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  bool isLoggedIn = false;
  @override
  Widget build(BuildContext context) {
    return isLoggedIn ? LoggedInPage() : NotLoggedInPage();
  }
}
