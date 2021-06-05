import 'package:evaly_clone/views/styles/colors.dart';
import 'package:flutter/material.dart';
import 'nav_bar_items.dart';

class NavBarPage extends StatefulWidget {
  @override
  _NavBarPageState createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        IndexedStack(
          index: _currentIndex,
          children: [for (final item in NaviBarItem.navBars) item.widget],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: navActiveColor,
            selectedLabelStyle: TextStyle(color: kGrey),
            unselectedItemColor: kGrey,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              for (final i in NaviBarItem.navBars)
                BottomNavigationBarItem(icon: Icon(i.iconData), label: i.title)
            ],
          ),
        )
      ],
    ));
  }
}
