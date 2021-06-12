import 'package:evaly_clone/state_management/tab_index.dart';
import 'package:evaly_clone/state_management/theme.dart';
import 'package:evaly_clone/views/screens/nav_items/account_tab/account_tab.dart';
import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'nav_bar_items.dart';
import 'package:flutter/services.dart';

class NavBarPage extends ConsumerWidget {
  void navigateToAccountPage(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => AccountTab()));
  }

  @override
  Widget build(BuildContext context, ScopedReader reader) {
    int _currentIndex = reader(tabIndexProvider);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: reader(appThemeStateProvider).brightness,
        statusBarColor: kTransparent));
    return Scaffold(
        body: Stack(
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
    ));
  }
}
