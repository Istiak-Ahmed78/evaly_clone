import 'package:evaly_clone/constants.dart';
import 'package:evaly_clone/views/styles/padding.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTabDrawer extends StatelessWidget {
  const HomeTabDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: ListView(
        shrinkWrap: true,
        children: [
          DrawerHeader(
              child: Image.asset(
            kEvalyLogo,
            height: 20,
            width: 100,
          )),
          DrawerTile(
            title: 'Home',
            icon: Icons.home,
          ),
          DrawerTile(
            title: 'Sign In',
            icon: Icons.person,
          ),
          DrawerTile(icon: FontAwesomeIcons.heart, title: 'Wishlist'),
          DrawerTile(
            icon: Icons.call,
            title: 'Contact Us',
          ),
          DrawerTile(
            title: 'Dark Mode',
            icon: Icons.nightlight,
          ),
          DrawerTile(title: 'Terms & Condition', icon: Icons.article)
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const DrawerTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: smallPadding),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: smallPadding,
          ),
          Text(title)
        ],
      ),
    );
  }
}
