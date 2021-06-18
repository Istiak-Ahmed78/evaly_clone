import 'package:evaly_clone/models/push_notification.dart';
import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/views/screens/nav_items/account_tab/account_tab.dart';
import 'package:evaly_clone/views/screens/notification_budget/notification_budget.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';
import 'nav_bar_items.dart';
import 'package:flutter/services.dart';

class NavBarPage extends StatefulWidget {
  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  void navigateToAccountPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => AccountTab()));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: kTransparent));
    return Scaffold(body: Consumer(builder: (context, reader, _) {
      int _currentIndex = reader(tabIndexProvider);

      return Stack(
        children: [
          IndexedStack(
            index: _currentIndex,
            children: [for (final item in NaviBarItem.navBars) item.widget],
          ),
          _currentIndex == 4
              ? Container()
              : Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: navActiveColor,
                    backgroundColor: Theme.of(context).backgroundColor,
                    selectedLabelStyle: TextStyle(color: kGrey),
                    unselectedItemColor: kGrey,
                    currentIndex: _currentIndex,
                    onTap: (index) {
                      context.read(tabIndexProvider.notifier).setIndex(index);
                    },
                    items: [
                      for (final i in NaviBarItem.navBars)
                        BottomNavigationBarItem(
                            icon: Icon(i.iconData), label: i.title)
                    ],
                  ),
                )
        ],
      );
    }));
  }
}
